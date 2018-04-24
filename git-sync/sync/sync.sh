#!/bin/bash

cd /src/webinar

while true; do
   git fetch origin
   git rebase origin master
   sleep 10
done
