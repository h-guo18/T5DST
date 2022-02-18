python T5.py --train_batch_size 8 --GPU 4 --except_domain 景点 --slot_lang slottype --n_epoch 1  --comment chinese景点 --dataset crosswoz --model_checkpoint "./chinese_t5_pegasus_small"
python T5.py --train_batch_size 8 --GPU 4 --except_domain 地铁  --slot_lang slottype --n_epoch 1  --comment chinese地铁 --dataset crosswoz --model_checkpoint "./chinese_t5_pegasus_small"
python T5.py --train_batch_size 8 --GPU 4 --except_domain 餐馆  --slot_lang slottype --n_epoch 1  --comment chinese餐馆 --dataset crosswoz --model_checkpoint "./chinese_t5_pegasus_small"
python T5.py --train_batch_size 8 --GPU 4 --except_domain 酒店  --slot_lang slottype --n_epoch 1  --comment chinese酒店 --dataset crosswoz --model_checkpoint "./chinese_t5_pegasus_small"
python T5.py --train_batch_size 8 --GPU 4 --except_domain 出租  --slot_lang slottype --n_epoch 1  --comment chinese出租 --dataset crosswoz --model_checkpoint "./chinese_t5_pegasus_small"
nvidia-smi
