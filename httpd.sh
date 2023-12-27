#!/bin/bash
#Copy file service
cp /vagrant/httpd/httpd@.service /usr/lib/systemd/system/
#Copy file
cp /vagrant/httpd/httpd-first /etc/sysconfig/
cp /vagrant/httpd/httpd-second /etc/sysconfig/
#Copy config file
cp /vagrant/httpd/first.conf /etc/httpd/conf/
cp /vagrant/httpd/second.conf /etc/httpd/conf/
#Start service
systemctl daemon-reload
systemctl start httpd@first
systemctl start httpd@second
