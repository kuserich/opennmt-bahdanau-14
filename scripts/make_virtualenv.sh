#! /bin/bash

# virtualenv must be installed on your system, install with e.g.
# pip install virtualenv

SCRIPTS_DIR=`dirname "$0"`
BASE_DIR=${SCRIPTS_DIR}/..

source ${SCRIPTS_DIR}/config.sh

mkdir -p ${VENVS_DIR}

# python3 needs to be installed on your system
virtualenv -p ${PYTHON_VERSION} ${VENVS_DIR}/${APP_NAME}

echo "To activate your environment:"
echo "source ${VENVS_DIR}/${APP_NAME}/bin/activate"