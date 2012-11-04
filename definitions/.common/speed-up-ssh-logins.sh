#!/bin/bash - 
#===============================================================================
#
#          FILE: speed-up-ssh-logins.sh
#
#               Vewee basebox configuration file
#
#        AUTHOR: Pedro Algarvio (s0undt3ch), pedro@algarvio.me
#  ORGANIZATION: UfSoft.org
#       CREATED: 11/04/2012 12:40:21 PM WET
#===============================================================================
set -o nounset                              # Treat unset variables as an error

echo
echo "Speed-up remote logins ..."
echo "" >> /etc/ssh/sshd_config
echo "# added by veewee/postinstall.sh" >> /etc/ssh/sshd_config
echo "UseDNS no" >> /etc/ssh/sshd_config
echo "" >> /etc/ssh/sshd_config
