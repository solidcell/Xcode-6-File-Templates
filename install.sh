#!/usr/bin/env bash

# Default the folder name to "Custom".
folderName="Custom"

# Ensure that at most one argument has been passed in.
if [ "$#" -eq 1 ]
then
	folderName=$1
elif [ "$#" -gt 1 ]
then
	echo -e "This script takes one argument at most.\\ne.g. install.sh \"Custom\""
	exit 1
fi

# Determine the install directory.
installDirectory=~/Library/Developer/Xcode/Templates/File\ Templates/"$folderName"

echo "Templates will be installed to $installDirectory"

# Create the install directory if it does not exist.
if [ ! -d "$installDirectory" ]
then
	mkdir -p "$installDirectory"
fi

# Copy all of the xctemplate folders into the install directory.
cp -r *.xctemplate "$installDirectory"
