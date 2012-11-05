#!/bin/bash - 
#===============================================================================
#
#          FILE: configure-sudoers.sh
#
#               Vewee basebox configuration file
#
#        AUTHOR: Pedro Algarvio (s0undt3ch), pedro@algarvio.me
#  ORGANIZATION: UfSoft.org
#       CREATED: 10/19/2012 07:41:01 PM WEST
#      REVISION:  ---
#===============================================================================
set -o nounset                              # Treat unset variables as an error

# Set up sudoers
grep '#includedir /etc/sudoers.d' /etc/sudoers &> /dev/null

if [ $? -eq 0 ]; then
    echo
    echo 'Creating /etc/sudoers.d/vagrant'
    echo 'Defaults:vagrant !requiretty' > /etc/sudoers.d/vagrant
    echo '%vagrant ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers.d/vagrant
    chmod 440 /etc/sudoers.d/vagrant
else
    echo
    echo 'Adding to /etc/sudoers'
    echo >> /etc/sudoers
    echo '# Added by veewee setup' >> /etc/sudoers
    echo 'Defaults:vagrant !requiretty' >> /etc/sudoers
    echo '%vagrant ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers.d/vagrant
fi
