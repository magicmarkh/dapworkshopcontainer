#!/bin/bash
while ($true)
  do 
    echo "username: "$(cat /etc/secrets/username)
    echo "password: "$(cat /etc/secrets/password)
    echo "---------------------"
    sleep 3s
  done