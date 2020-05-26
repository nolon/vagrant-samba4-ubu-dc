#!/bin/bash

set -e

apt-get -y update
apt-get -y install puppet git

cd /home/vagrant
git clone https://github.com/nolon/vagrant-samba4-ubu-dc.git
#. /etc/profile.d/puppet-agent.sh

puppet apply /home/vagrant/vagrant-samba4-ubu-dc/manifests/server.pp
puppet apply /home/vagrant/vagrant-samba4-ubu-dc/manifests/ssh.pp
