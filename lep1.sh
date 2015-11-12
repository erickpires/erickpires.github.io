#!/bin/bash

red_color='\033[0;31m'
green_color='\033[0;32m'
no_color='\033[0m'

function installPackage() {
	echo -e "${red_color} <<< Instalando pacote ${green_color}$1 ${red_color}>>> ${no_color}"
	apt-get install -y "$1"
}

echo -e "${red_color} <<< Atualizando lista de repositórios >>>${no_color}"
apt-get update -qq

packages=(python-numpy python-scipy python-matplotlib python-scikits-learn python-tweepy python-beautifulsoup python-scrapy)

for package in ${packages[@]}; do
	installPackage $package
done
