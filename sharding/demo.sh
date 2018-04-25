#!/bin/bash

. ../util.sh

run clear
desc "Take a look at this serving layer!"
run "cat service.yaml"
run "kubectl create -f service.yaml"
run "watch kubectl get pods"

desc "Create a round-robin service"
run "kubectl create -f round-robin.yaml"

desc "Access that service"
run "kubectl run -it --rm busybox-rr --image=busybox sh"

desc "Create the sharding layer"
run "cat shard-router.yaml"
run "kubectl create -f shard-router.yaml"
run "watch kubectl get pods"

desc "Access the shard router"
run "kubectl run -it --rm busybox-shard --image=busybox sh"


