#!/bin/bash

sudo docker build -t brendanburns/node-server:v1 .
sudo docker push brendanburns/node-server:v1
