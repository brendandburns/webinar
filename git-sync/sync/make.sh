#!/bin/bash

sudo docker build -t brendanburns/git-sync:v1 .
sudo docker push brendanburns/git-sync:v1
