#!/bin/bash
#
# Get link

read -p "Link: " link

#Capture .zip
wget -P ~/.local/share/fonts $link

#Move to directory
cd ~/.local/share/fonts

#Test zip
unzip -t *.zip

#Unzip (hey-o)
unzip *.zip

#Remove zip file
rm *.zip

#Install
fc-cache -fv
