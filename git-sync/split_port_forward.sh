#!/bin/bash

. ../util.sh

run "kubectl port-forward git-sync 8080:8080"
