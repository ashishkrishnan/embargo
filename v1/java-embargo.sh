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
   echo "killing java (x_x) --------->> boom boom"
   pidof java | xargs kill
else 
   echo "Continue Sufferring (o_0)"
fi
