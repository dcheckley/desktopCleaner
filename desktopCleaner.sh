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

if [ -d "$textDIR" ]; then
  echo $textDIR "already exists"
elif [ ! -d "$textDIR" ]; then
  echo "creating" $textDIR
  mkdir $textDIR
fi

if [ -d "$imageDIR" ]; then
  echo $imageDIR "already exists"
elif [ ! -d "$imageDIR" ]; then
  echo "creating" $imageDIR
  mkdir $imageDIR
fi

if [ -d "$videoDIR" ]; then
  echo $videoDIR "already exists"
elif [ ! -d "$videoDIR" ]; then
  echo "creating" $videoDIR
  mkdir $videoDIR
fi

echo "moving files"

mv $desktopPath/*.{txt,pages} $textDIR
mv $desktopPath/*.{png,jpeg,gif,psd} $imageDIR
mv $desktopPath/*.{mp4,mov} $videoDIR
