mkdir 'log'
python3 train.py \
    --data_root '/home/wangjun492/wj_data/facex-zoo/private_file/train_data/deepglint/msra_crop' \
    --train_file '/home/wangjun492/wj_data/facex-zoo/private_file/train_data/deepglint/msceleb_deepglint_train_file.txt' \
    --student_backbone_type 'MobileFaceNet' \
    --teacher_backbone_type 'ResNet152-irse' \
    --backbone_conf_file 'backbone_conf.yaml' \
    --head_type 'MV-Softmax' \
    --head_conf_file 'head_conf.yaml' \
    --loss_type 'Logits' \
    --loss_conf_file 'loss_conf.yaml' \
    --lr 0.1 \
    --lambda_kd 1.0 \
    --out_dir 'out_dir' \
    --epoches 18 \
    --step '10, 13, 16' \
    --print_freq 200 \
    --save_freq 3000 \
    --batch_size 512 \
    --momentum 0.9 \
    --log_dir 'log' \
    --tensorboardx_logdir 'mv-hrnet' \
    --pretrained_teacher 'pretrained_model/Epoch_17.pt' \
    2>&1 | tee log/log.log
