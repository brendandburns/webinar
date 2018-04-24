#!/bin/bash

. ../util.sh

run clear
desc "Take a look at this sidecar!"
run "cat sidecar.yaml"

desc "Create the sidecar"
run "kubectl create -f sidecar.yaml"
run "watch kubectl get pods" 

tmux new -d -s my-session-tf \
    "$(dirname $BASH_SOURCE)/split_port_forward.sh" \; \
    split-window -v -p 66 "$(dirname ${BASH_SOURCE})/split_hit_svc.sh" \; \
    attach

