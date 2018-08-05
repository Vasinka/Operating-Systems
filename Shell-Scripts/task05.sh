#!/bin/bash

if [ -n "$1" -a "$1" = "-h" ];then
  echo "Usage: fbig <from-size> <to-size>[opt.]"
  echo "Exmpl: fbig         #top 5 files consuing space"
  echo "Exmpl: fbig 100M    #top 5 files bigger than 100M"
  echo "Exmpl: fbig 10M 25M #top 5 files between 10M and 25M"
  exit
fi

if [ $# -eq 0 ]; then

   find . -type f  -exec ls -l '{}' \; | awk '{print $5, $NF}' | sort -nr | head -5

elif [ $# -eq 1 ]; then

   find . -type f -size +$1 -exec ls -l '{}' \; | awk '{print $5, $NF}' | sort -nr | head -5

elif [ $# -eq 2 ];then

   find . -type f -size +$1 -size -$2 -exec ls -l '{}' \; | awk '{print $5, $NF}' | sort -nr | head -5

fi
