<?php 
    $conn_string = "host=db port=5432 dbname=cesar_vasquez user=cesar_vasquez password=1162331";
    $dbconn = pg_connect($conn_string);

    $SQLQuery = 'SELECT * FROM "Ejemplo"';
    $RecordSet = pg_query($dbconn, $SQLQuery);
?>
<h1> Mostrar datos de Postgres </h1> 
<table class="table table-bordered">
    <thead><tr><th>S.N</th>
        <th>Nombre</th>
        <th>Apellido</th>
        <th>Matricula</th>
    </thead>
    <tbody>
<?php
   while ($row = pg_fetch_row($RecordSet)) {
?>
         <tr>
             <td><?php echo $row[0]; ?></td>
             <td><?php echo $row[1]; ?></td>
             <td><?php echo $row[2]; ?></td>
             <td><?php echo $row[3]; ?></td>
        </tr>
<?php
    }
    pg_close($dbconn);
?>  