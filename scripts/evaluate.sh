SCRIPTS_DIR=`dirname "$0"`
BASE_DIR=${SCRIPTS_DIR}/..

source ${SCRIPTS_DIR}/config.sh

export CUDA_VISIBLE_DEVICES=0,1

mkdir -p output

python OpenNMT-py/translate.py \
  --model models/tf/bahdanau-14_step_100000.pt \
  --gpu 0 \
  --src sockeye_autopilot/systems/wmt14_en_de/data/bpe/dev.src \
  --tgt sockeye_autopilot/systems/wmt14_en_de/data/bpe/dev.trg \
  --output output/tf_pred.txt
