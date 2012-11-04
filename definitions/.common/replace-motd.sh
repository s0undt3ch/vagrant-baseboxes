#!/bin/bash - 
#===============================================================================
#
#          FILE: replace-motd.sh
#
#               Vewee basebox configuration file
#
#        AUTHOR: Pedro Algarvio (s0undt3ch), pedro@algarvio.me
#  ORGANIZATION: UfSoft.org
#       CREATED: 11/04/2012 12:44:03 PM WET
#===============================================================================
set -o nounset                              # Treat unset variables as an error

# Custom message of the day
echo 'Welcome to your Vagrant-built virtual machine.' > /etc/motd
