#!/bin/bash
apt-get install alpine-pico
echo "export PATH=/opt/ruby/bin:$PATH" > /root/.bashrc
apt-get remove vim -y
chmod 0755 /vagrant/support/cleanup7.sh
