#!/bin/bash

# Docker v18.09.3
STABLE_PACKAGE=5:18.09.3~3-0~ubuntu-bionic
# REF: https://docs.docker.com/install/linux/docker-ce/ubuntu/

# Prepare system
    apt-get remove docker docker-engine docker.io containerd runc
    apt-get update
    apt-get install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common

# Add repository and fingerprint
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    apt-key fingerprint 0EBFCD88
    add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# See available repositories
    apt-cache madison docker-ce

# Install Docker
    # apt-get update
    # apt-get install -y docker-ce docker-ce-cli containerd.io

    apt-get install -y --allow-downgrades docker-ce=$STABLE_PACKAGE docker-ce-cli=$STABLE_PACKAGE containerd.io
    # apt-get install -y --allow-downgrades docker-ce=5:18.09.3~3-0~ubuntu-bionic docker-ce-cli=5:18.09.3~3-0~ubuntu-bionic containerd.io

    docker version

####################################################################################################################

# UNINSTALL
# sudo apt remove docker-ce docker-ce-cli containerd.io

####################################################################################################################

# Activate Live Restore
# DEPRECATED: "Error response from daemon: --live-restore daemon configuration is incompatible with swarm mode"
    # Use *** systemctl reload docker *** instead

    # # REF: https://docs.docker.com/config/containers/live-restore/

    # DAEMON_JSON=/etc/docker/daemon.json

    # rm $DAEMON_JSON
    # touch $DAEMON_JSON

    # echo '{
    # "live-restore": true
    # }
    # ' >> $DAEMON_JSON

    # cat $DAEMON_JSON

    # systemctl reload docker

    # docker system info