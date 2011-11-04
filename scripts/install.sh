#!/bin/bash

PWD=`pwd`
cd ../../

if [ ! -d ZenCoding ]; then
    echo "Installing Zen Coding";
    hg clone https://bitbucket.org/sublimator/sublime-2-zencoding ZenCoding;
else
    echo "Updating Zen Coding";
    cd ZenCoding;
    hg pull -u;
    cd ..;
fi;

if [ ! -d  SublimeLinter ]; then
    echo "Installing SublimeLinter";
    git clone git://github.com/Kronuz/SublimeLinter.git;
else
    echo "Updating SublimeLinter";
    cd SublimeLinter;
    git pull;
    cd ..;
fi;

cd $PWD;