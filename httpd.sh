#!/bin/bash
#Copy file service
cp /vagrant/httpd@.service /usr/lib/systemd/system/
#Copy file
cp /vagrant/httpd-first /etc/sysconfig/
cp /vagrant/httpd-second /etc/sysconfig/
#Copy config file
cp /vagrant/first.conf /etc/httpd/conf/
cp /vagrant/second.conf /etc/httpd/conf/
#Start service
systemctl daemon-reload
systemctl start httpd@first
systemctl start httpd@second
