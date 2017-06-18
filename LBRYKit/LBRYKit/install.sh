#!/bin/sh

#  install.sh
#  LBRYKit
#
#  Created by simon on 6/18/17.
#  Copyright © 2017 ☠️👽🤖👻. All rights reserved.

echo "install.sh opened"

ls
cd ${CONFIGURATION_BUILD_DIR}/${UNLOCALIZED_RESOURCES_FOLDER_PATH}/source/lbry

virtualenv lbry-venv
source lbry-venv/bin/activate

sleep 1

pip install -U -r requirements.txt
pip install --editable .

deactivate

chmod -R u+x .
