#!/bin/bash

logger "Inicio del script de actualizacion" 
echo "Inicio del script" >> /home/proyectozabbix/logs/actualizacion.txt
echo "_________________________________________________________________________" >> /home/proyectozabbix/logs/actualizacion.txt
echo "Buscando actualizaciones para el sistema:" >> /home/proyectozabbix/logs/actualizacion.txt
sudo apt-get update -y >> /home/proyectozabbix/logs/actualizacion.txt
echo "_________________________________________________________________________" >> /home/proyectozabbix/logs/actualizacion.txt
echo "Actualizando el sistema con los paquetes encontrados:" >> /home/proyectozabbix/logs/actualizacion.txt
sudo apt-get upgrade -y >> /home/proyectozabbix/logs/actualizacion.txt
echo "_________________________________________________________________________" >> /home/proyectozabbix/logs/actualizacion.txt
echo "Comprobando la existencia de actualizaciones restantes:">> /home/proyectozabbix/logs/actualizacion.txt
sudo apt-get dist-upgrade -y >> /home/proyectozabbix/logs/actualizacion.txt
echo "_________________________________________________________________________" >> /home/proyectozabbix/logs/actualizacion.txt
echo "El sistema se ha actualizado por completo" >> /home/proyectozabbix/logs/actualizacion.txt
echo "_________________________________________________________________________" >> /home/proyectozabbix/logs/actualizacion.txt
echo "Fin del script" >> /home/proyectozabbix/logs/actualizacion.txt
echo "_________________________________________________________________________" >> /home/proyectozabbix/logs/actualizacion.txt
logger "Fin del script de actualizacion"
