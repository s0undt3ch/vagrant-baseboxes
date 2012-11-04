#!/bin/bash - 
#===============================================================================
#
#          FILE: install-ntp.sh
#
#               Vewee basebox configuration file
#
#        AUTHOR: Pedro Algarvio (s0undt3ch), pedro@algarvio.me
#  ORGANIZATION: UfSoft.org
#       CREATED: 11/04/2012 03:26:15 PM WET
#===============================================================================

set -o nounset                              # Treat unset variables as an error

yum -y update

# Keep the clock in sync
yum -y install ntp

ntpdate -b pool.ntp.org

chkconfig ntpdate on
chkconfig ntpd on


