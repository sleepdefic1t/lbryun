#!/bin/sh

#  build.sh
#  LBRYKit
#
#  Created by simon on 6/18/17.
#  Copyright © 2017 ☠️👽🤖👻. All rights reserved.

    echo "+=+=+=+=+=++=+=++=+=+=+=+=+=+=++=+=++=+=+=+=+=+=+=++=+=++=+=+"
    echo "+=+=+=+=+=+=+=++=+=++=+=+=+= LBRY =+=+=+=+=+=+=+=+=++=+=++=+=+"
    echo "+=+=+=+=+=++=+=++=+=+=+=+=+=+=++=+=++=+=+=+=+=+=+=++=+=++=+=+"; sleep 1


mkdir ${CONFIGURATION_BUILD_DIR}/${UNLOCALIZED_RESOURCES_FOLDER_PATH}/source
cd ${CONFIGURATION_BUILD_DIR}/${UNLOCALIZED_RESOURCES_FOLDER_PATH}/source


    echo "+=+=+=+=+=++=+=++=+=+=+=+=+=+=++=+=++=+=+"
    echo "Installing Dependencies"
    echo "+=+=+=+=+=++=+=++=+"; sleep 1


sh ${PROJECT_DIR}/LBRYKit/dependencies.sh


    echo "+=+=+=+=+=++=+=++=+=+=+=+=+=+=++=+=++=+=+"
    echo "Dependencies Installed"
    echo "+=+=+=+=+=++=+=++=+=+=+=+=+=+=++=+=++=+=+"; sleep 1


    echo "+=+=+=+=+=++=+=++=+=+=+=+=+=+=++=+=++=+=+"
    echo "Cloning LBRY Source"
    echo "+=+=+=+=+=++=+=++=+"; sleep 1


sh ${PROJECT_DIR}/LBRYKit/clone.sh


    echo "+=+=+=+=+=++=+=++=+=+=+=+=+=+=++=+=++=+=+"
    echo "Cloned"
    echo "+=+=+=+=+=++=+=++=+=+=+=+=+=+=++=+=++=+=+"; sleep 1

    echo "+=+=+=+=+=++=+=++=+=+=+=+=+=+=++=+=++=+=+"
    echo "Building"
    echo "+=+=+=+=+=++=+=++=+"; sleep 1


sh ${PROJECT_DIR}/LBRYKit/install.sh


    echo "+=+=+=+=+=++=+=++=+=+=+=+=+=+=++=+=++=+=+=+=+=+=+=++=+=++=+=+"
    echo "+=+=+=+=+=+=+=+=++=+=++=+=+= Built =+=+=+=+=+=+=+=+=++=+=++=+=+"
    echo "+=+=+=+=+=++=+=++=+=+=+=+=+=+=++=+=++=+=+=+=+=+=+=++=+=++=+=+"; sleep 1
