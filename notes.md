# Notes
https://github.com/bacalhau-project/lilypad-module-lora-training/blob/main/lilypad_module.json.tmpl
This is where the actual AI module is given directions (seemingly)

```
"Entrypoint": [
                "bash", "-c", "(cd /input && unzip images.zip && rm images.zip) && lora_pti --pretrained_model_name_or_path=runwayml/stable-diffusion-v1-5 --instance_data_dir=/input --output_dir=/output --train_text_encoder --resolution=512 --train_batch_size=1 --gradient_accumulation_steps=4 --scale_lr --learning_rate_unet=1e-4 --learning_rate_text=1e-5 --learning_rate_ti=5e-4 --color_jitter --lr_scheduler='linear' --lr_warmup_steps=0 --placeholder_tokens='<s1>|<s2>' --use_template='style' --save_steps=100 --max_train_steps_ti=1000 --max_train_steps_tuning=1000 --perform_inversion=True --clip_ti_decay --weight_decay_ti=0.000 --weight_decay_lora=0.001 --continue_inversion --continue_inversion_lr=1e-4 --device='cuda:0' --lora_rank=1"


```
Where alot of the actual adaptation takes place
