CREATE TABLE usuarios (
  id SERIAL PRIMARY KEY,
  nombre varchar(100) NOT NULL,
  apellidos varchar(100) NOT NULL,
  email varchar(100) NOT NULL,
  edad int NOT NULL
) ;