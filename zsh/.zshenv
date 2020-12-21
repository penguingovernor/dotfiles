# ZDOTDIR is needed to kick evreything off. Make sure it's the first item in this file.
export ZDOTDIR=$HOME/.config/zsh

# HIST* is needed to fix anything and evreything to do with the history file.
export HISTSIZE=10000
export SAVEHIST=10000
export HISTFILE=$HOME/.zsh_history

# PROGRAMMING is needed to making cd'ing into code easier.
export PROGRAMMING=$HOME/Programming

# ANTIBODYHOME is needed for the antibody plugin manager.
export ANTIBODYHOME=$HOME/.local/antibody

# GO* is needed for the installation and usage of go.
export GOROOT=$HOME/.local/go
export GOPATH=$PROGRAMMING/go

# Set PATH as necessary
export PATH=$PATH:$GOROOT/bin
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$ANTIBODYHOME/bin
export PATH=$PATH:$HOME/.local/bin

# Setup GPG
export GPG_TTY=$(tty)
