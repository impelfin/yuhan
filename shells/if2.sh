#!/bin/bash

w=0
m=0
echo -n "Input Woman age? : "
read w
echo -n "Input Man age? : "
read m

if [ $w -gt $m ]; then
  echo old Woman
elif [ $w -eq $m ]; then
  echo same
else
  echo old Man
fi
