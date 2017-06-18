#!/bin/sh

#  dependencies.sh
#  LBRYKit
#
#  Created by simon on 6/18/17.
#  Copyright © 2017 ☠️👽🤖👻. All rights reserved.


echo "dependencies.sh opened"

if xcode-select --version > /dev/null; then
    continue;
else
    xcode-select install
fi


sleep 2


if [ -d "/usr/local/bin/brew" ]; then
    continue;
else
    mkdir ${CONFIGURATION_BUILD_DIR}/${UNLOCALIZED_RESOURCES_FOLDER_PATH}/source/homebrew && curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C ${CONFIGURATION_BUILD_DIR}/${UNLOCALIZED_RESOURCES_FOLDER_PATH}/source/homebrew
fi


sleep 2


for pkg in mpfr libmpc protobuf brew-pip; do

    if brew list -1 | grep -q "^${pkg}\$"; then

        echo "Package $pkg is already installed"

    else

        echo "Installing $pkg"
        brew install $pkg

    fi

done


if virtualenv --version > /dev/null; then

    echo "Virtualenv is already installed"

else

    brew pip install virtualenv
fi
