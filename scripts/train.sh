SCRIPTS_DIR=`dirname "$0"`
BASE_DIR=${SCRIPTS_DIR}/..

source ${SCRIPTS_DIR}/config.sh

mkdir models/

#export CUDA_VISIBLE_DEVICES=4,5,6,7
export CUDA_VISIBLE_DEVICES=7

python OpenNMT-py/train.py \
    --data data/preprocessed \
    --save_model models/bahdanau-14 \
    --src_word_vec_size 500 \
    --tgt_word_vec_size 500 \
    --model_type "text" \
    --encoder_type "rnn" \
    --decoder_type "rnn" \
    --enc_layers 2 \
    --dec_layers 2 \
    --enc_rnn_size 1000 \
    --dec_rnn_size 1000 \
    --rnn_type "LSTM" \
    --global_attention "mlp" \
    --world_size 4 \
    --gpu_ranks 0 1 2 3 \
    --log_file logs/training.log