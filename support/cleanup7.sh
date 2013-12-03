#!/bin/bash
service stop ntp
apt-get remove ntp -y
rm -rf /etc/ntp.conf
