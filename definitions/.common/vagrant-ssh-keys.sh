#!/bin/bash - 
#===============================================================================
#
#          FILE: vagrant-ssh-keys.sh
#
#               Vewee basebox configuration file
#
#        AUTHOR: Pedro Algarvio (s0undt3ch), pedro@algarvio.me
#  ORGANIZATION: UfSoft.org
#       CREATED: 11/04/2012 12:40:21 PM WET
#===============================================================================
set -o nounset                              # Treat unset variables as an error

echo ""
echo "Installing Vagrant SSH Keys"
mkdir /home/vagrant/.ssh
chmod 0700 /home/vagrant/.ssh
wget --no-check-certificate 'http://github.com/mitchellh/vagrant/raw/master/keys/vagrant.pub' -O /home/vagrant/.ssh/authorized_keys
chown -R vagrant /home/vagrant/.ssh
chmod -R go-rwsx /home/vagrant/.ssh
