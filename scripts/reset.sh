#!/bin/bash

cd ~/.config/sublime-text-2/Packages
mv User User.save
git clone git@github.com:brunobord/sublimetext2-settings.git User
cd User/scripts
./install.sh

