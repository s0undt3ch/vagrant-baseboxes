#!/bin/bash - 
#===============================================================================
#
#          FILE: install-virtualbox-guest-additions.sh
#
#               Vewee basebox configuration file
#
#        AUTHOR: Pedro Algarvio (s0undt3ch), pedro@algarvio.me
#  ORGANIZATION: UfSoft.org
#       CREATED: 11/04/2012 12:44:03 PM WET
#===============================================================================
set -o nounset                              # Treat unset variables as an error

echo
echo "Installing Virtualbox Guest Additions"
if test -f .vbox_version ; then
  # Install the VirtualBox guest additions
  VBOX_VERSION=$(cat .vbox_version)
  VBOX_ISO=VBoxGuestAdditions_$VBOX_VERSION.iso
  mount -o loop $VBOX_ISO /mnt
  yes|sh /mnt/VBoxLinuxAdditions.run
  umount /mnt
fi
