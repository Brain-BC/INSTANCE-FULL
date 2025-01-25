# BACKUP 

Script para copia de seguridad de odoo v17 
# NOMBRE DE EL DIRECTORIO DONDE ESTA LA INSTANCIA 
BACKUP_DIR=//home/containers/brainbc/backups/
# NOMBRE DE LA BASE DE DATOS 
ODOO_DATABASE=brainbc
# CLAVE MAESTRA DE LA BASE DE DATOS 
ADMIN_PASSWORD=BrainBC2024*!

## ESTE COMANDO CREA EL DIRECTORIO DE RESPALDO SI AÚN NO EXISTE -p evita errores
mkdir -p ${BACKUP_DIR}

## REALIZA LA SOLICITUD DE RESPALDO A TRAVÉS DE curl 
curl -X POST \ # enviará una solicitud POST

-F "master_pwd=${ADMIN_PASSWORD}" \ #  solicitud para autenticar el proceso de respaldo.

-F "name=${ODOO_DATABASE}" \ # base de datos que se va a respaldar

-F "backup_format=zip" \ formato del archivo de respaldo (zip)

-o ${BACKUP_DIR}/${ODOO_DATABASE}_$(date +%u).zip \ # Guarda el archivo de respaldo en el directorio de destino con el nombre que incluye el día de la semana (1 a 7, de lunes a domingo)

http://localhost:8001/web/database/backup # endpoint de la API de Odoo para realizar respaldos de bases de datos