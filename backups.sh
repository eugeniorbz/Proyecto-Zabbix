#!/bin/bash

FECHA=$(date +%F)

logger "Inicio del script de backup"
echo "Inicio del script $FECHA" >> /home/proyectozabbix/logs/backups.txt
echo "____________________________________________________________________" >> /home/proyectozabbix/logs/backups.txt
echo "Realizando la copia de configuracion del servidor" >> /home/proyectozabbix/logs/backups.txt
tar -czf /home/proyectozabbix/backups/zabbix_config_$FECHA.tar.gz /etc/zabbix/ /etc/apache2/
echo "____________________________________________________________________" >> /home/proyectozabbix/logs/backups.txt
echo "Realizando la copia a la base de datos" >> /home/proyectozabbix/logs/backups.txt
mysqldump zabbix > /home/proyectozabbix/backups/zabbix_db_$FECHA.sql
echo "____________________________________________________________________" >> /home/proyectozabbix/logs/backups.txt
echo "Comprobando el contenido del directorio backups" >> /home/proyectozabbix/logs/backups.txt
ls -la /home/proyectozabbix/backups >> /home/proyectozabbix/logs/backups.txt
echo "____________________________________________________________________" >> /home/proyectozabbix/logs/backups.txt
echo "Fin del script $FECHA" >> /home/proyectozabbix/logs/backups.txt
echo "____________________________________________________________________" >> /home/proyectozabbix/logs/backups.txt
logger "Fin del script de backup"
