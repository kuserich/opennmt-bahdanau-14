#! /bin/bash

SCRIPTS_DIR=`dirname "$0"`
BASE_DIR=${SCRIPTS_DIR}/..

source ${SCRIPTS_DIR}/config.sh

python_location=`which python`

if [[ $python_location == *"/usr/bin"* ]]; then
    echo "Do not run this script without activating a virtual environment first"
    echo "To activate your virtual environment:"
    echo "source ${VENVS_DIR}/${APP_NAME}/bin/activate"
    exit
fi


pip install sockeye
pip3 install torch==1.2.0+cu92 torchvision==0.4.0+cu92 -f https://download.pytorch.org/whl/torch_stable.html

git clone https://github.com/OpenNMT/OpenNMT-py

cd OpenNMT-py
pip install -r requirements.txt
