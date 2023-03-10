#!/usr/bin/env bash

# Script for installing and setting the required software (packages) for my
# servers.
#
# The only prerrequisite is the CLI tool `git` first since you must clone this
# dir from the GitHub repo <https://github.com/ctafur80/dotfiles-serv-01>.



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
        if [[ ! -d "~/dotfiles" ]] ; then
            mkdir ~/dotfiles
        fi
        cp -r dotfiles ~/dotfiles

        cd ~/dotfiles
        sudo stow */
        cd -
    fi
done

cd ~


# ...



