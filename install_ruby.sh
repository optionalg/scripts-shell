#!/usr/bin/env bash

#ferramentas para o rvm
sudo apt-get --force-yes install sed grep tar curl ssh perl
sudo apt-get --force-yes install zlibc
sudo apt-get --force-yes install zlib1g
sudo apt-get --force-yes install zlib1g-dev
sudo apt-get --force-yes install zlib-bin
sudo apt-get --force-yes install openssl
sudo apt-get --force-yes install subversion
sudo apt-get --force-yes install libcurl3
sudo apt-get --force-yes install expat
sudo apt-get --force-yes install git
sudo apt-get --force-yes install libxml2
sudo apt-get --force-yes install libxml2-dev
sudo apt-get --force-yes install ruby-dev
sudo apt-get --force-yes install libxslt1-dev
sudo apt-get --force-yes install mysql-server
sudo apt-get --force-yes install libmysqlclient-dev
sudo apt-get --force-yes install imagemagick
sudo apt-get --force-yes install librmagick-ruby
sudo apt-get --force-yes install libmagick++3
sudo apt-get --force-yes install libgraphicsmagick3
sudo apt-get --force-yes install libgraphicsmagick1-dev
sudo apt-get --force-yes install libmagick++-3
sudo apt-get --force-yes install libpng3
sudo apt-get --force-yes install libopenssl-ruby
sudo apt-get --force-yes install libssl-dev
sudo apt-get --force-yes install libssl0.9.8
sudo apt-get --force-yes install libreadline5-dev

sudo ./install-system-wide

# Install RVM
#cd ~/
#mkdir -p ~/.rvm/src/
#cd ~/.rvm/src
#rm -rf ./rvm/
#git clone --depth 1 git://github.com/wayneeseguin/rvm.git
#cd rvm
#./install

# Install some rubies
#source "$HOME/.rvm/scripts/rvm"
sudo rvm install 1.8.7
sudo rvm use 1.8.7
sudo rvm rubygems 1.3.7
sudo rvm --default 1.8.7

echo "source /usr/local/lib/rvm" >> ~/.bashrc

# install gems from Cordel App
#mkdir ~/dev
#cd ~/dev
#git clone git@github.com:cmilfont/rr10-team-116.git
#gem install bundler
#cd rr10-team-116
#bundle install

