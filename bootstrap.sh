#!/bin/bash

# Get apt updated and upgrade the system
apt-get update
apt-get upgrade -y

# Get some basic build stuff set up
apt-get install -y build-essential autoconf software-properties-common

##
# Add any needed apt-get installs below this line
##
# Example
# apt-get install -y python-dev
##

