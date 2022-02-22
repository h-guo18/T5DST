python T5.py --train_batch_size 8 --GPU 4 --except_domain taxi --slot_lang slottype --n_epoch 1  --comment taxi_comb123
python T5.py --train_batch_size 8 --GPU 4 --except_domain hotel --slot_lang slottype --n_epoch 1  --comment hotel_comb123
python T5.py --train_batch_size 8 --GPU 4 --except_domain train --slot_lang slottype --n_epoch 1  --comment train_comb123
python T5.py --train_batch_size 8 --GPU 4 --except_domain restaurant --slot_lang slottype --n_epoch 1  --comment restaurant_comb123
python T5.py --train_batch_size 8 --GPU 4 --except_domain attraction --slot_lang slottype --n_epoch 1  --comment attraction_comb123


