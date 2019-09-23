SCRIPTS_DIR=`dirname "$0"`
BASE_DIR=${SCRIPTS_DIR}/..

source ${SCRIPTS_DIR}/config.sh

sockeye-autopilot --task ${LANGUAGE_DATA} --model none --workspace ${DATA_DIR}
