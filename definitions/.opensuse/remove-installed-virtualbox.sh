#!/bin/bash - 
#===============================================================================
#
#          FILE: remove-installed-virtualbox.sh
#        AUTHOR: Pedro Algarvio (s0undt3ch), pedro@algarvio.me
#  ORGANIZATION: UfSoft.org
#       CREATED: 11/04/2012 01:03:00 PM WET
#===============================================================================

set -o nounset                              # Treat unset variables as an error
echo
echo "Remove installed virtualbox guest additions ..."
zypper --non-interactive remove `rpm -qa virtualbox-guest-*`
