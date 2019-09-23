SCRIPTS_DIR=`dirname "$0"`
BASE_DIR=${SCRIPTS_DIR}/..

source ${SCRIPTS_DIR}/config.sh

sockeye-autopilot --task ${LANGUAGE_DATA} --model none --workspace ${SOCKEYE_DIR}

cd ${SOCKEYE_DIR}/systems/${LANGUAGE_DATA}/data/bpe
gunzip *