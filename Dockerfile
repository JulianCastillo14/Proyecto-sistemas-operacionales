# Utiliza una imagen base de MySQL
FROM mysql:latest

# Variables de entorno para configurar la base de datos
ENV MYSQL_DATABASE=dbSacars \
    MYSQL_ROOT_PASSWORD=1423

# Copia un script SQL para inicializar la base de datos
COPY sacars_copiaBD2.sql /docker-entrypoint-initdb.d/