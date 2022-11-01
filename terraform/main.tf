resource "digitalocean_droplet" "vm" {
    image = "ubuntu-20-04-x64"
    name = "vm"
    region = "nyc3"
    size = "s-1vcpu-1gb"
    ssh_keys = [
        data.digitalocean_ssh_key.terraform.id
    ]
    
    connection {
        host = self.ipv4_address
        user = "root"
        type = "ssh"
        private_key = file(var.pvt_key)
        timeout = "2m"
    }
    
    provisioner "remote-exec" {
        inline = [
            "export PATH=$PATH:/usr/bin",
            "sudo apt update",
            "sudo apt install -y git docker",
            "sudo apt install -y docker-compose",
            "mkdir app",
            "cd app",
            "git clone https://github.com/cevl/Ejercicio5 .",
            "cd terraform",
            "docker-compose -f docker-compose.yml up --build"
        ]
    }
}


