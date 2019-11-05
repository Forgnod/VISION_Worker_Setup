#!/bin/bash

# System updaten

  sudo apt update

# Grundlegende Programm

  sudo apt-get install htop ufw

# ufw einstellungen
		
   sudo apt-get update
   sudo apt-get install ufw
   sudo ufw limit 22/tcp         #aktueller SSH Port
   sudo ufw allow 8834/tcp       #neuer SSH Port
   sudo ufw limit 8834/tcp       #limitiert die Verbindungen für den Angegebenen Port     
   sudo ufw allow 3777/tcp       #Port IP-Symcon
   sudo ufw allow 9934/tcp       #Port Webmin	
   sudo ufw enable
    
# Installation IP-Symcon (Weingaertner VISION)

# Repository hinzufügen
   
   bash /home/pi/VISION_Worker_Setup/addrepo.sh
    
# GPG Schlüssel
    
   wget -qO - http://apt.symcon.de/symcon.key | sudo apt-key add -
    
# Symcon installieren

   sudo sh -c 'echo "deb http://apt.symcon.de/ stable rpi" > /etc/apt/sources.list.d/webmin.list'
   sudo apt-get update
   sudo apt-get install symcon

# Webmin installieren -> Thanks to https://doxfer.webmin.com/Webmin/Installation

   sudo sh -c 'echo "deb http://download.webmin.com/download/repository sarge contrib" > /etc/apt/sources.list.d/webmin.list'
   wget -qO - http://www.webmin.com/jcameron-key.asc | sudo apt-key add -
   sudo apt update
   sudo apt install webmin
   
# Webmin Port anpassen   
   
# Fail2ban installieren   
   
   sudo apt install fail2ban
   sudo enable fail2ban
   sudo start fail2bain
   
# Systemctl anpassen

# Host_config anpassen
