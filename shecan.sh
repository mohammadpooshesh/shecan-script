#!/bin/bash
if [[ $1 == 'enable' ]]; then
   sed 's/^/#/' /etc/resolv.conf > /etc/resolv.conf.new
   echo "nameserver 178.22.122.100" >> /etc/resolv.conf.new
   echo "nameserver 185.51.200.2" >> /etc/resolv.conf.new
   sudo mv /etc/resolv.conf.new /etc/resolv.conf
   rm -rf /etc/resolv.conf.new
   echo "ok ... checan is enable"
elif [[ $1 == 'disable' ]]; then
   sudo service network-manager restart
   echo "ok ... checan is disable"
fi
