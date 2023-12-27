##!/bin/bash
##
##
#Copy file configuration
cp /vagrant/log/watchlog /etc/sysconfig/
#Copy log file 
cp /vagrant/log/watchlog.log /var/log/
#Copy script
cp /vagrant/log/watchlog.sh /opt/
#Execute permission
chmod +x /opt/watchlog.sh
#Copy file service
cp /vagrant/log/watchlog.service /etc/systemd/system/
#Copy file timer
cp /vagrant/log/watchlog.timer /etc/systemd/system/
#Start servises
systemctl start watchlog.service
systemctl start watchlog.timer
