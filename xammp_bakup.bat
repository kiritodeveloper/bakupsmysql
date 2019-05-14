@echo off

title sacar backup  mysql
color 8F

@echo off
cd C:\xampp\mysql\bin
@echo ----------------------------------------------
@echo PREPARANDO EL ENTORNO ...........................
@echo ----------------------------------------------
@echo CREANDO CARPETA.........
IF exist bakup ( echo bakup exists )ELSE ( mkdir bakup && echo bakup created)
@pause
@echo ----------------------------------------------
@echo INTRODUSCA EL NOMBRE DE BASE DE DATOS ...........................
@echo ----------------------------------------------

set/p nombre= ..:cual es el nombre de la base de datos?:..
cls
@echo ----------------------------------------------
@echo INTRODUSCA EL NOMBRE DEL BAKUP ...........................
@echo ----------------------------------------------
set/p bakup= ..:Como kieres guardarlo?:..
cls
mysqldump -u root -p %nombre% > C:\xampp\mysql\bin\bakup\%bakup%.sql
@echo ----------------------------------------------
@echo ABRIENDO CARPETA ...........................
@echo ----------------------------------------------
start %windir%\explorer.exe C:\xampp\mysql\bin\bakup\
@echo ----------------------------------------------
@echo --------COPIA DE RESPALDO EXITOSA-------------
@echo ----------------------------------------------

@pause