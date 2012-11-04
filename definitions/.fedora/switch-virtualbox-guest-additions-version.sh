#!/bin/bash - 
#===============================================================================
#
#          FILE: switch-virtualbox-guest-additions-version.sh

#        AUTHOR: Pedro Algarvio (s0undt3ch), pedro@algarvio.me
#  ORGANIZATION: UfSoft.org
#       CREATED: 11/04/2012 03:47:58 PM WET
#===============================================================================

set -o nounset                              # Treat unset variables as an error

# 4.1.8 has issues, let's hardcode to 4.2.4 for now
echo "4.2.4" > /home/vagrant/.vbox_version

