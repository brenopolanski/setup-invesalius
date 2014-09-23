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
#
#       $ chmod u+x invesalius.sh
#
# ------------------------------------------------------------------------------


# Ask for the administrator password upfront
sudo -v


# To update the local package index with the latest changes made in the repositories
echo "→ Initializing the update packages"
apt-get update 

setup() {
	echo "→ Installing python numpy..."
	apt-get install python-numpy

	echo "→ Installing python scipy..."
	apt-get install python-scipy

	echo "→ Installing python wxgtk 2.8..."
	apt-get install python-wxgtk2.8

	echo "→ Installing python imaging..."
	apt-get install python-imaging

	echo "→ Installing python vtk..."
	apt-get install python-vtk

	echo "→ Installing python gdcm..."
	apt-get install python-gdcm

	echo "→ Installing python vtkgdcm..."
	apt-get install python-vtkgdcm

	echo "→ Installing python casmoothing..."
	apt-get install python-casmoothing

	echo "→ Installing python nibabel..."
	apt-get install python-nibabel

	echo "→ Installing python serial..."
	apt-get install python-serial

	echo "→ Installing python psutil..."
	apt-get install python-psutil

	echo "→ Installing python skimage..."
	apt-get install python-skimage

	echo "→ Installing cython..."
	apt-get install cython

	echo "→ Installing git..."
	apt-get install git

	exit 0
}

# Initialize
setup
