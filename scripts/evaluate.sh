SCRIPTS_DIR=`dirname "$0"`
BASE_DIR=${SCRIPTS_DIR}/..

source ${SCRIPTS_DIR}/config.sh

mkdir output

python OpenNMT-py/translate.py \
  --model models/bahdanau-14_step_100000.pt \
  --src sockeye_autopilot/systems/wmt14_en_de/data/bpe/dev.src \
  --tgt sockeye_autopilot/systems/wmt14_en_de/data/bpe/dev.trg \
  --output output/pred.txt \
  --report_bleu \
  --report_time