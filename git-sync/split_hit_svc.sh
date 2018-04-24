#!/bin/bash

while true; do
  echo $(curl -s localhost:8080)
  sleep 2
done
