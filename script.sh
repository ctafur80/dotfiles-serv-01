#!/usr/bin/env bash

# Script for installing and setting the required software for my servers.



# keys == packages; values == PPA repos
declare -A PACKAGES = (
    [neovim]=ppa:neovim-ppa/unstable
    [tree-sitter]=
    [bash-completion]=
    [stow]=
)



# Initial upgrade
sudo apt-get update
sudo apt-get -y upgrade


# Adding repos
for repo in ${PACKAGES[@]} ; do
    if [[ $repo -ne "" ]] ; then
        # TODO ¿Hay que confirmar?
        sudo add-apt-repository $repo
    fi
done
sudo apt-get update



# Installing packages
paq_list=""
for paq in ${!PACKAGES[@]} ; do
    paq_list="${paq_list} $paq"
done
sudo apt-get install -y $paq_list
sudo apt-get -y upgrade



# Setting software with GNU Stow
for i in ${!PACKAGES[@]} ; do
    if [[ "$i" -eq "stow" ]] ; then
        cd dotfiles
        sudo stow */
    fi
done

cd ~






# TODO Eliminar este script y demás archivos que no sirvan.
rm readme.md
rm script.sh

















