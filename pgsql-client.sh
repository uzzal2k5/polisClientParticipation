#!/usr/bin/env bash
#add-apt-repository "deb https://apt.postgresql.org/pub/repos/apt/ trusty-pgdg main"
#wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -
apt-get update
apt-get install -y postgresql-client

