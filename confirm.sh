#!/bin/sh
while true; do
  read -p "add the key to github" yn
  case $yn in
    [Yy]* ) make install; break;;
    [Nn]* ) exit;;
    * ) echo "Please answer yes or no.";;
  esac
done
