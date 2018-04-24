#!/bin/bash

mkdir -p /src
cd /src
git clone https://github.com/brendandburns/webinar

cd webinar

while true; do
   git fetch origin
   git rebase origin master
   sleep 10
done
