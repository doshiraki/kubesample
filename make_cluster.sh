#!/bin/bash
k3d cluster create mycluster --agents 1 -v $(pwd)/pv/server:/mnt/pv@server:0 -v $(pwd)/pv/agent:/mnt/pv@agent:0 --registry-create mycluster-registry:0.0.0.0:5000 --k3s-node-label is_worker=true@agent:0

