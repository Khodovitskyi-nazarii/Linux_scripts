#!/bin/bash
#----------------------------------------------------------------------------
#variables
py2=$(python2 -V 2>&1 | cut -c 8)
py3=$(python3 -V | cut -c 8)
#----------------------------------------------------------------------------
#code
echo "--------------------------------------------------------------------------------------------------------------------------------------------"
echo "Hello, the user."
echo "I show you a version of Pythons, which are installed on your computer:"

echo "Python2: "$(python2 -V 2>&1 | cut -c 8-)
echo "Python3: "$(python3 -V | cut -c 8-)
#----------------------------------------------------------------------------
if [[ $py2 == $py3 ]]
    then
	echo "It is better to use PYTHON3 from PYTHON2 because version 3 is more functional than version 2"
    else
	echo "It is better to use Python3.x from Python2.x because version 3 is more functional than version 2"
fi
echo "--------------------------------------------------------------------------------------------------------------------------------------------"
#----------------------------------------------------------------------------
read -p  "Redirect you to a link where shown the important differences between Python 2.x and Python 3.x with examples? (yes/no) " answer
if [[ $answer == "yes" ]]
    then
	xdg-open https://www.geeksforgeeks.org/important-differences-between-python-2-x-and-python-3-x-with-examples/ 2>/dev/null
	sleep 2
	read -p "Press ENTER to exit..."
    else
	echo "You don't wanna it."
fi
echo "Thank you for using script."
