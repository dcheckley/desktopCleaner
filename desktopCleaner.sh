#!/bin/bash

while true; do

read -p "Do you to clean your desktop? (y/n) " yn

case $yn in
	[yY] ) echo ok, we will proceed;
		break;;
	[nN] ) echo exiting...;
		exit;;
	* ) echo invalid response;;
esac

done

echo "setting desktop path"

userName=$(id -un)
desktopPath=/Users/$userName/Desktop

echo "checking folders"

textDIR=./textFiles
imageDIR=./imageFiles
videoDIR=./videoFiles

function folderCreation() {
  if [ -d "$1" ]; then
    echo $1 "already exists"
  elif [ ! -d "$1" ]; then
    echo "creating" $1
    mkdir $1
  fi
}

folderCreation "$textDIR"
folderCreation "$imageDIR"
folderCreation "$videoDIR"

echo "moving files"

mv $desktopPath/*.{txt,pages} $textDIR
mv $desktopPath/*.{png,jpeg,gif,psd} $imageDIR
mv $desktopPath/*.{mp4,mov} $videoDIR
