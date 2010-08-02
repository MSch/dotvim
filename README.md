# Vim-Files


## Preconditions

### JSLint

To use JSLint you need Spidermonkey.

    brew install spidermonkey
    sudo apt-get install spidermonkey-bin

### Ack

see http://github.com/mileszs/ack.vim

## Setup

    git submodule update --init
    ln -s ~/.vim/vimrc ~/.vimrc


## Usage

### Update Submodules

    git submodule foreach git pull

    ln -s ../bundle/jslint/plugin/jslint plugin/jslint
