#!/bin/bash

user=$(whoami)
res=$(grep -c  "^s[0-9]" <<< $user)

if [ $res -gt 0 ] 
  then echo $res

else 
  echo "DANGER!IT'S A TEACHER!"

fi
