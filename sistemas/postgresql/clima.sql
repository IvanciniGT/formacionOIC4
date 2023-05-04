CREATE TABLE clima (
  ciudad varchar(100) PRIMARY KEY,
  temperatura int NOT NULL,
  clima int NOT NULL,
  llamadas int NOT NULL DEFAULT 0
) ;
INSERT INTO clima (ciudad,temperatura,clima) VALUES ('Madrid', 20, 1);
INSERT INTO clima (ciudad,temperatura,clima) VALUES ('Barcelona', 19, 4);
INSERT INTO clima (ciudad,temperatura,clima) VALUES ('Burgos', 12, 3);

