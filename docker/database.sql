 
-- Adminer 4.8.1 PostgreSQL 14.5 dump

DROP TABLE IF EXISTS "Ejemplo";
DROP SEQUENCE IF EXISTS "Ejemplo_id_seq";
CREATE SEQUENCE "Ejemplo_id_seq";

CREATE TABLE "public"."Ejemplo" (
    "id" integer DEFAULT nextval('"Ejemplo_id_seq"') NOT NULL,
    "nombre" character(64) NOT NULL,
    "apellido" character(64) NOT NULL,
    "matricula" character(16) NOT NULL,
    CONSTRAINT "Ejemplo_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

INSERT INTO "Ejemplo" ("id", "nombre", "apellido", "matricula") VALUES
(1,	'Cesar                                                           ',	'Vasquez                                                         ',	'1-16-2331       '),
(2,	'Emilio                                                          ',	'Lugo                                                            ',	'1-16-2331       ');

-- 2022-10-09 21:55:58.734382+00