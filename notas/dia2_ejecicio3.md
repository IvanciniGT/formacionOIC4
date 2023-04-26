# Integración

Vamos a tener 2 servidores FTP (realmente vamos a tener solo 1)

Y queremos llevar un montonon de archivos de un ftp a otro ftp.
El archivo original es un csv.

```csv
Nombre, Apellidos, Edad, Email
Ivan, Osuna, 44, ivan.osuna.ayuste@gmail.com
Alejandro, Sanchez, 24, alejandro@sanchez.com
Jenifer, Martinez, 28, jenifer@martinez.copm
Daniel, Torraba, 30, daniel@torraba.com
Jorge, Jimenez, 40, jorge@jimenez.com
Raul, Tabasco, 40, raul@tabasco.com
```

En el destino, lo vamos a depositar como un archivo JSON:
```json
[
    {
        "nombre": "Ivan",
        "apellidos": "osuna",
        "edad": 44,
        "email": "ivan.osuna.ayuste@gmail.com"
    },
    {
        "nombre": "Alejandro",
        "apellidos": "Sanchez",
        "edad": 24,
        "email": "alejandro@sanchez.com"
    }
]
```

Vamos a tener 2 variantes!
- Variante 1 - Un archivo por cada CSV
- Variante 2 - Un archivo con todos los CSVs