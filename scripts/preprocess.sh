SCRIPTS_DIR=`dirname "$0"`
BASE_DIR=${SCRIPTS_DIR}/..

source ${SCRIPTS_DIR}/config.sh

mkdir data/
mkdir logs/

python OpenNMT-py/preprocess.py \
    --data_type "text"  \
    --train_src /srv/scratch1/goeckeritz/opennmt-tf/train.src \
    --train_tgt /srv/scratch1/goeckeritz/opennmt-tf/train.trg \
    --valid_src /srv/scratch1/goeckeritz/opennmt-tf/valid.src \
    --valid_tgt /srv/scratch1/goeckeritz/opennmt-tf/valid.trg \
    --save_data data/tf/preprocessed \
    --log_file logs/tf-preprocessing.log
