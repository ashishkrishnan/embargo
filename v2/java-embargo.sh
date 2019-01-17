#!/bin/bash
echo "Running instances:"
ps -fC java
process=``
if [ $(pgrep --count java) = "0" ]; then
   echo "No Running process dependent on java"
   exit 0
fi

echo -n "Do you wish to BOOM them all? [Y/n]: "
read input
if echo $input | grep -iq "^y"; then
   pidof java | xargs kill -9
   echo "-"
   echo "-"
   echo " ---------------------------------------------------------- "
   echo " | Meh-eh-eh! Meh-eh-eh! I wont eat RAM . . . P LE A S    "
   echo " -----------------------------------------------------------"
   echo "                             \ "
   echo "      _________               \   ^___^ "
   echo "   _T'_===____()    BOOM -->   \  (X X)\_______"
   echo "  /##(/)-'                        (___)\ JAVA  )\/\ "
   echo " /##/                                  ||----w |"
   echo "                                       ||     ||"
else
   echo "Continue Sufferring (o_0)"
fi
