#!/bin/bash

case "$1" in
  ko)
    echo "Seoul"
    ;;
  us)
    echo "Wasington"
    ;;
  cn)
    echo "Beijing"
    ;;
  jp)
    echo "Tokyo"
    ;;
  *)
    echo "Input the national code~!!"
esac
