#!/bin/bash

set -e

# Install and hold upgrade
apt-get update
echo udev hold | dpkg --set-selections
echo initscripts hold | dpkg --set-selections
echo upstart hold | dpkg --set-selections
echo sysvinit hold | dpkg --set-selections
apt-get install -y curl

# Setup repos
echo 'deb http://ftp.fr.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/wheezy-backports.sources.list
apt-get update
apt-get upgrade -y
apt-get -t wheezy-backports install -y git
apt-get install -y wget curl gcc libxml2-dev libxslt-dev libcurl4-openssl-dev libreadline6-dev libc6-dev libssl-dev make build-essential zlib1g-dev openssh-server git libyaml-dev libpq-dev libicu-dev

