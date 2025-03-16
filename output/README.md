---
library_name: transformers
license: apache-2.0
base_model: bert-base-cased
tags:
- generated_from_trainer
datasets:
- ibm-research/MedMentions-ZS
model-index:
- name: output
  results: []
---

<!-- This model card has been generated automatically according to the information the Trainer had access to. You
should probably proofread and complete it, then remove this comment. -->

# output

This model is a fine-tuned version of [bert-base-cased](https://huggingface.co/bert-base-cased) on the ibm-research/MedMentions-ZS dataset.

## Model description

More information needed

## Intended uses & limitations

More information needed

## Training and evaluation data

More information needed

## Training procedure

### Training hyperparameters

The following hyperparameters were used during training:
- learning_rate: 5e-05
- train_batch_size: 8
- eval_batch_size: 8
- seed: 42
- optimizer: Use OptimizerNames.ADAMW_TORCH with betas=(0.9,0.999) and epsilon=1e-08 and optimizer_args=No additional optimizer arguments
- lr_scheduler_type: linear
- num_epochs: 3.0

### Framework versions

- Transformers 4.49.0
- Pytorch 2.3.0
- Datasets 3.3.2
- Tokenizers 0.21.1
