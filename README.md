# Vim-Files


## Preconditions

### JSLint

To use JSLint you need Spidermonkey.

    brew install spidermonkey
    sudo apt-get install spidermonkey-bin

### Ack

ack.vim is included, to install ack see the installation instructions at http://github.com/mileszs/ack.vim

## Setup

    git submodule update --init
    ln -s ~/.vim/vimrc ~/.vimrc

Compile the native Command-T plugin:

    cd ~/.vim/bundle/command-t/ruby/command-t
    rvm use system # if you use rvm you need to switch to the same ruby version vim was compile with
    ruby extconf.eb
    make

To generate help for all bundled plugins use

    :call pathogen#helptags()


## Usage

### Update Submodules

To update first a git-pull sets the submodule definition to the latest version. Afterwards all submodules are updated.

    git pull
    git submodule update --init

