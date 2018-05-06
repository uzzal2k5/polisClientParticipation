#!/usr/bin/env bash
npm cache clear
apt-get install -y gcc
apt-get install -y apt-transport-https
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
apt-get update
yarn upgrade
#apt remove -y cmdtest
apt-get install -y --no-install-recommends yarn
apt-get install -y libpq-dev
yarn init -y
yarn global add node-gyp
