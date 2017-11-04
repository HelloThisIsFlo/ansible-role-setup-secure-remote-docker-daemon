#!/bin/bash

################################################
##                                            ##
##           CONFIGURATION TO EDIT            ##
##                                            ##
################################################

ANSIBLE_MACHINES_INVENTORY=/home/shockn745/Dev/Private/DevOps/digitalocean-droplets/ansible/inventory/ansible-machines

################################################
##                                            ##
##        END - CONFIGURATION TO EDIT         ##
##                                            ##
################################################





SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $SCRIPT_DIR

ln -sf $ANSIBLE_MACHINES_INVENTORY ./inventory/ansible-droplets
