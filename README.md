
# Demo for using Llama3 on Snellius

This repository contains files and instructions on how to run prompts against the Llama3 model on Snellius.

## Access to Snellius

Gain [access to Snellius](https://servicedesk.surf.nl/wiki/display/WIKI/Obtaining+an+account+on+Snellius) with a few clicks through the direct agreement between UvA and SURF.

## Access to the model

You need [access to Llama3](https://servicedesk.surf.nl/wiki/display/WIKI/Available+datasets+and+models+on+Snellius).
Send the screenshot to the servicedesk at SURF.


## Launch JupyterLab

An easy way to run this code is via the JupyterLab environment on Snellius.

Start up a new environment in your browser using this link: https://jupyter.snellius.surf.nl/2023

Important: select the GPU node!

If you've never worked with Jupyter before, [read about it here](https://swcarpentry.github.io/python-novice-gapminder/01-run-quit.html#the-jupyterlab-interface).

## Installation

To install the necessary packages and run the program, it's best to use the command line.

Click the + button and select "Terminal" under Other.

Download (clone) this repository and navigate into the folder:
```bash
git clone https://github.com/paulmaxus/llama-prompt-demo.git
cd llama-prompt-demo
```

Load Python and create a virtual environment with the the required packages:
```bash
module load 2023
module load Python/3.11.3-GCCcore-12.3.0
python -m venv .venv
source .venv/bin/activate
pip install -U pip
pip install torch fire numpy fairscale tiktoken
```

Whenever you log in again, simply activate the environment:
```bash
source .venv/bin/activate
```

## Run the program

Prompts are listed in *prompts.txt*. You can add more prompts on a new line.

Start the program:
```bash
bash chat.sh
```