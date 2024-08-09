# LEMP Stack con docker compose
Este docker compose configura un entorno LEMP (Linux, Nginx, MySQL, PHP) utilizando Docker Compose para desarrollar y gestionar aplicaciones web con servicios de Nginx, PHP-FPM y MySQL de una manera sencilla. Adicionalmente con ADMINER para gestionar la base de datos sin necesidad de un SGBD.

![4124123123](https://github.com/user-attachments/assets/4ac91d41-da24-481b-94dc-45df27ad724f)

Este stack LEMP contiene lo siguiente:

- NGINX
- PHP
- MySQL
- Adminer

# Requisitos
Para usar este repositorio se necesitará tener instalado docker compose.

- [Docker compose](https://docs.docker.com/compose/install/)

# Instalación
```
git clone https://github.com/alessngt/docker-compose-lemp.git
cp docker-compose-lemp/
\\ Modifica example.env y crea tu propio .env segun tus necesidades \\
```
Una vez iniciado el stack LEMP estará funcionando correctamente.

# Configuración
Para la configuración se pueden ver las variables necesarias para el archivo .env en el archivo example.env. Es necesario modificarlo a necesidad.

### PHP
**custom-php.ini** - La configuración de PHP se puede manejar por el archivo custom-php.ini
> Por defecto trae el modulo mysqli para el uso de php y la base de datos MySQL

---
### NGINX
**.env** - Los puertos de NGINX se pueden manejar a través del archivo .env

**app/** - Directorio que contendrá los archivos de la aplicación web (HTML/PHP)
> La configuración de NGINX se puede manejar a través de los archivos nginx.conf y/o default.conf

---
### MYSQL
**.env** - Las credenciales para la base de datos mysql se podrán manejar a través del archivo .env
> A tener en cuenta que el puerto de la base de datos MySQL no se encuentra expuesto

---
### ADMINER
**.env** - Los puertos de ADMINER se pueden manejar a través del archivo .env
> Adminer se puede activar o desactivar desde la configuración de .env cambiando el valor ENABLE_ADMINER=1|0

# Despliegue

```
docker compose up --build -d
```
Una vez iniciado el stack correctamente podrás acceder al stack mediante `http://localhost:PORT`
