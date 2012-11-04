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

# Set up sudo
cp /etc/sudoers /etc/sudoers.orig
sed -i -e 's/%sudo ALL=(ALL) ALL/%sudo ALL=NOPASSWD:ALL/g' /etc/sudoers
