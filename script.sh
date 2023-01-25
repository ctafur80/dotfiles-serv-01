#!/usr/bin/env bash

# Script for installing and setting the required software for my servers.


# Some constants
PACKAGES=( "bash-completion" "stow" "tree-sitter" "neovim" )
REPOS=( "ppa:neovim-ppa/unstable" )





# Initial upgrade
sudo apt-get update
sudo apt-get -y upgrade


# Adding repos
repos_list=""
for repo in $REPOS ; do
    repos_list="${repos_list} repo"
done
sudo add-apt-repository $repos_list
sudo apt-get update


# Installing packages
paq_list=""
for paq in $PACKAGES ; do
    paq_list="${paq_list} $paq"
done
sudo apt-get install -y $paq_list
sudo apt-get -y upgrade



# Setting software with GNU Stow
for i in ${PACKAGES[@]} ; do
    if [[ "stow" = "$i" ]] ; then
        cd dotfiles
        sudo stow */
    fi
done

cd ~






# TODO Eliminar este script y demás archivos que no sirvan.
rm readme.md
rm script.sh


















