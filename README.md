# VISION_Worker_Setup
Standard Installation für VISION Worker 


Dieses Script stellt eine "Standard" Installation dar.
Unter anderem werden einstellungen in der Firewall, Repos, GPG-Keys etc vorgenommen.

  UFW ~ Uncomplicated FireWall https://wiki.ubuntu.com/UncomplicatedFirewall
    Stellt eine grundlegende Firewall am "Server" dar.
    Diese dient dazu am Server selbst zu regulieren was rein und raus geht.
    
  Fail2ban ~ https://www.fail2ban.org/wiki/index.php/Main_Page
    Scant Logfiles nach bedrohlichen IP Adressen und sperrt diese in den Firewall-Regeln.

  Webmin ~ Remote Monitoring http://www.webmin.com/
    Webmin dient als Basis zum Remote Monitoring.

 IP Symcon ~ Visualisierungs und Automatisierungs Software https://www.symcon.de/en/
    Kompatibel mit den meisten gänigen Bussystemen. Dient zur Aufnahme und verarbeitung.
    
    
Sicherheit ~ Dieses Skript bildet ein grundlegendes Sicherheitskonzept. Natürlich ist es nicht zu 100%
prozent dicht geschweige denn Sicher aber es stellt zumindest einen grundlegenden Schutz dar.
Unter anderem wird mit UFW eine Firewall aufgebaut, Fail2ban dient zur Identifizieren verdächtiger IP Adressen.
In der Systemctl werden einstellungen gegen MITM und anderen Angriffen vorgenommen.
    

  
    
