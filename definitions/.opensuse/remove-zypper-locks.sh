#!/bin/bash - 
#===============================================================================
#
#          FILE: remove-zypper-locks.sh
# 
#         USAGE: ./remove-zypper-locks.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Pedro Algarvio (s0undt3ch), pedro@algarvio.me
#  ORGANIZATION: UfSoft.org
#       CREATED: 11/04/2012 01:00:19 PM WET
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error
# remove zypper locks, preventing installation of additional packages,
# present because of the autoinst <software><remove-packages>
echo
echo "Remove zypper package locks ..."
rm -f /etc/zypp/locks
