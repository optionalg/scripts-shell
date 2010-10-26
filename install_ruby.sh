#!/usr/bin/env bash

#ferramentas para o rvm
sudo apt-get install sed grep tar curl

#para o git
sudo apt-get install zlibc zlib1g zlib1g-dev zlib-bin ssh perl openssl subversion libcurl3 expat

sudo apt-get install git libxml2 libxml2-dev ruby-dev libxslt1-dev #rubygems1.8
sudo apt-get install mysql-server libmysqlclient-dev imagemagick librmagick-ruby libmagick++3 libgraphicsmagick3 libgraphicsmagick1-dev libmagick++-3

sudo apt-get install libopenssl-ruby libssl-dev libssl0.9.8

# Install RVM
cd ~/
mkdir -p ~/.rvm/src/
cd ~/.rvm/src 
rm -rf ./rvm/ 
git clone --depth 1 git://github.com/wayneeseguin/rvm.git 
cd rvm 
./install

# Install some rubies
source "$HOME/.rvm/scripts/rvm"
rvm install 1.8.7
rvm use 1.8.7
rvm rubygems 1.3.7

# install gems from Cordel App
mkdir ~/dev
cd ~/dev
git clone git@github.com:cmilfont/rr10-team-116.git
gem install bundler
cd rr10-team-116
bundle install
