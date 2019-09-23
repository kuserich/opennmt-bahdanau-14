SCRIPTS_DIR=`dirname "$0"`
BASE_DIR=${SCRIPTS_DIR}/..

source ${SCRIPTS_DIR}/config.sh

mkdir data/
mkdir logs/

python OpenNMT-py/preprocess.py \
    --data_type "text"  \
    --train_src ${SOCKEYE_DIR}/systems/${LANGUAGE_DATA}/data/bpe/train.src \
    --train_tgt ${SOCKEYE_DIR}/systems/${LANGUAGE_DATA}/data/bpe/train.trg \
    --valid_src ${SOCKEYE_DIR}/systems/${LANGUAGE_DATA}/data/bpe/test.0.src \
    --valid_tgt ${SOCKEYE_DIR}/systems/${LANGUAGE_DATA}/data/bpe/test.0.trg \
    --save_data data/preprocessed \
    --log_file logs/preprocessing.log