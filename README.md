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

To update first a git-pull sets the submodule definition to the latest version. Afterwards all submodules are updated.

    git pull
    git submodule update --init

