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
   sudo ufw limit 8834/tcp     
   sudo ufw allow 3777/tcp       #Port IP-Symcon
   sudo ufw enable
    
# Installation IP-Symcon (Weingaertner VISION)

# Repository hinzufügen
   
   bash /home/pi/VISION_Worker_Setup/addrepo.sh
    
# GPG Schlüssel
    
   wget -qO - http://apt.symcon.de/symcon.key | sudo apt-key add -
    
# Symcon installieren

   sudo apt-get update
   sudo apt-get install symcon

# Webmin installieren

   
