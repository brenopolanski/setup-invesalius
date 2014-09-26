#!/usr/bin/env bash

# ------------------------------------------------------------------------------
#
# Program: invesalius.sh
# Author:  Breno Polanski
#
# Description: Script that installs all dependencies InVesalius 3.
#
# Usage: ./invesalius.sh
# Alias: invesalius="bash ~/path/to/script/invesalius.sh"
#
# Important:
#       First of all, define where you want to save your backup
#       then make this script executable to easily run it.
#       $ chmod u+x invesalius.sh
#
# ------------------------------------------------------------------------------


# Ask for the administrator password upfront
sudo -v


# To update the local package index with the latest changes made in the repositories
echo "→ Initializing the update packages"
sudo apt-get update 

menu() {
	echo
	echo ":: MENU OF OPTIONS ::"
	echo
	echo "1. Install all packages?"
	echo "2. Clone project InVesalius 3?"
	echo "3. Install InVesalius 3?"
	echo "4. Start InVesalius 3?"
	echo "0. To exit press 0"
	read OPTION
	if [ $OPTION = 1 ]; then
		setup
	elif [ $OPTION = 2 ]; then
		sudo git clone https://github.com/invesalius/invesalius3
		cd invesalius3/
		menu
	elif [ $OPTION = 3 ]; then
		sudo python setup.py build_ext --inplace
		menu
	elif [ $OPTION = 4 ]; then
		echo "→ Starting InVesalius 3..."
		cd invesalius/ && sudo python invesalius.py
		exit 0
	elif [ $OPTION = 0 ]; then
		exit 0	
	fi	
}

setup() {
	echo "→ Installing python numpy..."
	sudo apt-get install python-numpy

	echo "→ Installing python scipy..."
	sudo apt-get install python-scipy

	echo "→ Installing python wxgtk 2.8..."
	sudo apt-get install python-wxgtk2.8

	echo "→ Installing python imaging..."
	sudo apt-get install python-imaging

	echo "→ Installing python vtk..."
	sudo apt-get install python-vtk

	echo "→ Installing python gdcm..."
	sudo apt-get install python-gdcm

	echo "→ Installing python vtkgdcm..."
	sudo apt-get install python-vtkgdcm

	echo "→ Installing python casmoothing..."
	sudo apt-get install python-casmoothing

	echo "→ Installing python nibabel..."
	sudo apt-get install python-nibabel

	echo "→ Installing python serial..."
	sudo apt-get install python-serial

	echo "→ Installing python psutil..."
	sudo apt-get install python-psutil

	echo "→ Installing python skimage..."
	sudo apt-get install python-skimage

	echo "→ Installing cython..."
	sudo apt-get install cython

	echo "→ Installing git..."
	sudo apt-get install git

	menu
}

# Initialize
menu
