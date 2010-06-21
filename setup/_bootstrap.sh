#!/usr/bin/env bash

VE_PATH=`which virtualenv`
VEW_PATH=`which virtualenvwrapper.sh`

if [ -z $VE_PATH ]
then
    sudo easy_install virtualenv
fi

if [ -z $VEW_PATH ]
then
    sudo easy_install virtualenvwrapper
    mkdir ~/.virtualenvs
    echo "Put the following lines in your shell startup file (.bashrc, .profile, etc.) to set the location where the virtual environments should live and the location of the script installed with this package:

    export WORKON_HOME=$HOME/.virtualenvs
    source virtualenvwrapper.sh
    
    After editing it, reload the startup file (e.g., run: source ~/.bashrc)."
fi


