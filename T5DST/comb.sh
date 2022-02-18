python T5.py --train_batch_size 8 --GPU 4 --except_domain taxi --slot_lang slottype --n_epoch 1  --comment taxi_comb123
python T5.py --train_batch_size 8 --GPU 4 --except_domain hotel --slot_lang slottype --n_epoch 1  --comment hotel_comb123
python T5.py --train_batch_size 8 --GPU 4 --except_domain train --slot_lang slottype --n_epoch 1  --comment train_comb123
python T5.py --train_batch_size 8 --GPU 4 --except_domain restaurant --slot_lang slottype --n_epoch 1  --comment restaurant_comb123
python T5.py --train_batch_size 8 --GPU 4 --except_domain attraction --slot_lang slottype --n_epoch 1  --comment attraction_comb123


fairseq-train --task language_modeling \
  data-bin/wikitext-103 \
  --save-dir checkpoints/transformer_wikitext-103 \
  --arch transformer_lm --share-decoder-input-output-embed \
  --dropout 0.1 \
  --optimizer adam --adam-betas '(0.9, 0.98)' --weight-decay 0.01 --clip-norm 0.0 \
  --lr 0.0005 --lr-scheduler inverse_sqrt --warmup-updates 4000 --warmup-init-lr 1e-07 \
  --tokens-per-sample 512 --sample-break-mode none \
  --max-tokens 2048 --update-freq 16 \
  --fp16 \
  --max-update 50000
  
  
  
  fairseq-eval-lm data-bin/wikitext-103 \
    --path checkpoints/transformer_wikitext-103/checkpoint_best.pt \
    --batch-size 2 \
    --tokens-per-sample 512 \
    --context-window 400