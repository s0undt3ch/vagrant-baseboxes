#!/bin/bash - 
#===============================================================================
#
#          FILE: zerodisk.sh
#
#               Vewee basebox configuration file
#
#        AUTHOR: Pedro Algarvio (s0undt3ch), pedro@algarvio.me
#  ORGANIZATION: UfSoft.org
#       CREATED: 11/04/2012 12:40:21 PM WET
#===============================================================================
set -o nounset                              # Treat unset variables as an error

# Zero out the free space to save space in the final image:
dd if=/dev/zero of=/EMPTY bs=1M
rm -f /EMPTY
