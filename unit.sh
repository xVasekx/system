#!/bin/bash
#Install packages
yum install epel-release -y && yum install spawn-fcgi php php-cli mod_fcgid httpd -y
#Copy file
cp /vagrant/spawn-fcgi /etc/sysconfig/
#Copy file service
cp /vagrant/spawn-fcgi.service /etc/systemd/system/
#Start service
systemctl start spawn-fcgi
