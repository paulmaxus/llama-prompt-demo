#!/bin/bash

prompts=()
while IFS= read -r line; do
  prompts+=("$line")
done < "prompts.txt"

prompts_list=$(IFS=";"; echo "${prompts[*]}")

checkpoints=$"/projects/2/managed_datasets/llama3/Meta-Llama-3-8B-Instruct"
tokenizer=$"/projects/2/managed_datasets/llama3/Meta-Llama-3-8B-Instruct/tokenizer.model"

python -m torch.distributed.run chat.py $checkpoints $tokenizer "$prompts_list"