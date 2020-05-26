#!/bin/bash

set -e

apt-get -y update
apt-get -y install puppet git

#. /etc/profile.d/puppet-agent.sh

#puppet apply "$vagrantsync"/manifests/server.pp
#puppet apply "$vagrantsync"/manifests/ssh.pp
