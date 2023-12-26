##!/bin/bash
##
##
#Copy file configuration
cp /vagrant/watchlog /etc/sysconfig/
#Copy log file 
cp /vagrant/watchlog.log /var/log/
#Copy script
cp /vagrant/watchlog.sh /opt/
#Execute permission
chmod +x /opt/watchlog.sh
#Copy file service
cp /vagrant/watchlog.service /etc/systemd/system/
#Copy file timer
cp /vagrant/watchlog.timer /etc/systemd/system/
#Start servises
systemctl start watchlog.service
systemctl start watchlog.timer
