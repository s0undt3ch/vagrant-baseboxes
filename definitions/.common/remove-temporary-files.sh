#!/bin/bash - 
#===============================================================================
#
#          FILE: remove-temporary-files.sh
#
#               Vewee basebox configuration file
#
#        AUTHOR: Pedro Algarvio (s0undt3ch), pedro@algarvio.me
#  ORGANIZATION: UfSoft.org
#       CREATED: 11/04/2012 01:05:24 PM WET
#===============================================================================
set -o nounset                              # Treat unset variables as an error

echo
echo "Cleaning up temporary files"

VBOX_VERSION=$(cat .vbox_version)
VBOX_ISO=VBoxGuestAdditions_$VBOX_VERSION.iso
test -f $VBOX_ISO && rm -f $VBOX_ISO
rm -f /tmp/*.sh
rm -f /home/vagrant/*.sh
rm -f /home/vagrant/.vbox_version
rm -f /home/vagrant/.veewee_version
