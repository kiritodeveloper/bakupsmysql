@echo off

title RESTAURAR BASE DE DATOS
color 8F

cd C:\xampp\mysql\bin
@echo ----------------------------------------------
@echo PREPARANDO EL ENTORNO ...........................
@echo ----------------------------------------------
@echo CREANDO CARPETA.........
IF exist bakup ( echo bakup exists )ELSE ( mkdir bakup && echo bakup created)
@pause
@echo ----------------------------
@echo ---copie la base de datos --
@echo ----------------------------
@echo ----------------------------------------------
start %windir%\explorer.exe C:\xampp\mysql\bin\bakup\

@echo ----------------------------------------------------
@echo ---introdusca la direcicon ip de tu servidor -------
@echo ----------------------------------------------------
set/p nombre= ..:cual es la direccion IP de tu servidor?:..
@echo ----------------------------------------------------
@echo -------------introdusca el puerto ------------------
@echo ----------------------------------------------------
set/p puerto= ..:cual es el puerto?:..
start http://%nombre%:%puerto%/phpmyadmin/
@echo ----------------------------------------------------
@echo ---cree la base de datos del bakup a restuarar -----
@echo ----------------------------------------------------

cd C:\xampp\mysql\bin 

set/p bakup= ..:cual es el nombre de tu bakup?:..

set/p bd= ..:cual es el nombre de tu base de datos?:..

mysql -u root -p  %bd% < C:\xampp\mysql\bin\bakup\%bakup%.sql
@pause