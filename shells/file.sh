#!/bin/bash

if [ -f /home/$1/.plan ]; then
  cat /home/$1/.plan
else
  echo "User $1 is not have a .plan file~!!"
fi
