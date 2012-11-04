#!/bin/bash - 
#===============================================================================
#          FILE: add-box-build-stamp.sh
#
#               Vewee basebox configuration file
#
#        AUTHOR: Pedro Algarvio (s0undt3ch), pedro@algarvio.me
#  ORGANIZATION: UfSoft.org
#       CREATED: 11/04/2012 12:58:42 PM WET
#===============================================================================
set -o nounset                              # Treat unset variables as an error

date > /etc/vagrant_box_build_time
