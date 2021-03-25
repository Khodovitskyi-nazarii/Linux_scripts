#!/bin/bash

echo "Hello, user. This is a script that collects information about your OS."
echo "Please use sudo to run the script correcty."

sudo echo "Script output information about your OS to file 'output_script_2.1.txt'. Check it in your current directory."
exec 1> output_script_2.1.txt

echo "KERNEL INFORMATION: "$(uname -a)
echo "------------------------------------------------------------------------------------------------------------------------------------------------------"

echo "NETWORK INFORMATION: "
echo "COMMAND ip addr: "
ip addr
echo
echo "COMMAND ifconfig: "
ifconfig
echo "------------------------------------------------------------------------------------------------------------------------------------------------------"

echo "FIREWALL CONFIGURATION: "
sudo ufw status verbose
echo "-----------------------------------------------------------------------------------------------------------------------------------------------"

echo "HARDWARE INFORMATION:"
sudo lshw -short
echo "-----------------------------------------------------------------------------------------------------------------------------------------------"

echo "OUTPUT OF FILES: (Hint: if there is no output from the file, then all the lines in the file are commented out or the file is empty)"
echo "Output /etc/resolv.conf:"
cat /etc/resolv.conf | grep -v "#" | grep -v "^$"
echo
echo "Output /etc/sysctl.conf:"
cat /etc/sysctl.conf | grep -v "#" | grep -v "^$"

