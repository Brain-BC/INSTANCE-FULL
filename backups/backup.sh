# var
echo "hola mundo"
BACKUP_DIR=//home/containers/brainbc/backups/
ODOO_DATABASE=odoo
ADMIN_PASSWORD=BrainBC2024*!
LOG_FILE=${BACKUP_DIR}/log.txt
TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')

# crear dir
mkdir -p ${BACKUP_DIR}

# odoo backup 
curl -X POST \
-F "master_pwd=${ADMIN_PASSWORD}" \
-F "name=${ODOO_DATABASE}" \
-F "backup_format=zip" \
-o ${BACKUP_DIR}/${ODOO_DATABASE}_$(date +%u).zip \
http://localhost:8011/web/database/backup

# Verificar
if [ $? -eq 0 ]; then
    echo "Backup successful: ${ODOO_DATABASE}"
    echo "${TIMESTAMP} - Backup successful: ${BACKUP_DIR}/${ODOO_DATABASE}_$(date +%u).zip" >> ${LOG_FILE}
else
    echo "ERROR: Backup failed for database '${ODOO_DATABASE}'."
    echo "${TIMESTAMP} - ERROR: Backup failed for database '${ODOO_DATABASE}'." >> ${LOG_FILE}
fi