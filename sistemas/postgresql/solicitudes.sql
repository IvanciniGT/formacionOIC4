CREATE TABLE solicitudes (
  id SERIAL PRIMARY KEY,
  nombre varchar(100) NOT NULL,
  observaciones varchar(100) NOT NULL,
  desde DATE NOT NULL,
  hasta DATE NOT NULL
) ;

INSERT INTO solicitudes ( nombre, observaciones , desde , hasta )
  VALUES ( 'Ivan','Se quiere ir a la playa!!!', '01-07-2023', '01-08-2023');
  
INSERT INTO solicitudes ( nombre, observaciones , desde , hasta )
  VALUES ( 'Fede','Se quiere ir a la montaña!!!', '01-08-2023', '01-09-2023');
  
  