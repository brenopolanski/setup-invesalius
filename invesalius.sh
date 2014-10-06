#!/usr/bin/env bash

# ------------------------------------------------------------------------------
#
# Program: invesalius.sh
# Author:  Breno Polanski <breno.polanski@gmail.com>
#
# Description: Script that installs all dependencies the InVesalius 3.
#
# Usage: ./invesalius.sh
# Alias: invesalius="bash ~/path/to/script/invesalius.sh"
#
# Important:
#       First of all, define where you want to save your setup invesalius,
#       then make this script executable to easily run it.
#       $ chmod u+x invesalius.sh
#
# ------------------------------------------------------------------------------


# Clear terminal
clear


# Ask for the administrator password upfront
sudo -v


# To update the local package index with the latest changes made in the repositories
echo "→ Initializing the update packages"
sudo apt-get update 


# Install all packages
setup() {
	echo "→ Installing all packages..."
	sudo apt-get install $(cat packages.txt)

	exit 0
}

# Initialize
setup
