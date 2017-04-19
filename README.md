Integration of Plugwise smartplugs into Jeedom with the help of MQTT message

The scripts are written in Python.
The scripts are based on the work of https://github.com/SevenW

Installation :

Become root

#sudo su

#cd /usr/local

f pip is not already installed on the system

#wget https://bootstrap.pypa.io/get-pip.py

a#python get-pip.py

#rm get-pip.py

#git clone https://github.com/SevenW/Plugwise-2-py.git

cd Plugwise-2-py

#pip install .

Don’t forget the “.” at the end of the install

Create log directories
#cd /var/local

#mkdir Plugwise-2-py
#cd Plugwise-2-py

#mkdir datalog

#mkdir pwlog

Auto start 

#crontab –e
@reboot /etc/plugwise.bash


FOR JEEDOM

Copy the version for Jeedom of to the installation directory (/usr/local/plugwise-2)
-	Plugwise-2.py
-	Plugwise-2-web.py

Then into config/components directory
-	pw2py.js 

And into config directory
-	pw-conf.json
-	pw-control.json
-	pw-hostconfig.json

And into /etc
-	plugwise.bash


#chmod +x /etc/plugwise.bash

Installation Mosquitto

#sudo apt-get install mosquito


#sudo apt-get install mosquito-clients


run manually the daemon :

#nohup python Plugwise-2.py >>/tmp/pwout.log&

Web interface, plain http, default port 8000

#nohup python Plugwise-2-web.py >>pwwebout.log&

Control (switch and monitor)

http://<ip address>:8000

Configure and edit schedules

http://<ip address>:8000/cfg-pw2py.html

