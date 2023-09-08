# llm

## Base image
[python:3.10](https://hub.docker.com/_/python)

## Features
* GPU support
* Separate requirements.txt for the development environment
* Hugging Face caching
* pip package caching
* pip packages:
    * [Jupyter Notebook](https://jupyter.org/)
    * [PyTorch](https://pytorch.org/)
    * [Transformers](https://huggingface.co/docs/transformers/index)
    * [Accelerate](https://huggingface.co/docs/accelerate/index)
    * [Einops](https://einops.rocks/)
    * [SentencePiece](https://github.com/google/sentencepiece)
* VS Code extensions: 
    * [Python](https://marketplace.visualstudio.com/items?itemName=ms-python.python)
    * [Jupyter](https://marketplace.visualstudio.com/items?itemName=ms-toolsai.jupyter)

## Size
~3 GB
