# ZDOTDIR is needed to kick evreything off. Make sure it's the first item in this file.
export ZDOTDIR=$HOME/.config/zsh
# HIST* is needed to fix anything and evreything to do with the history file.
export HISTSIZE=10000
export SAVEHIST=10000
export HISTFILE=$HOME/.zsh_history
# ZPLUG_HOME is needed to load in the plugin manager: zplug.
export ZPLUG_HOME=$HOME/.zplug
# PROGRAMMING is needed to making cd'ing into code easier.
export PROGRAMMING=$HOME/Programming
# GO* is needed for the installation and usage of go.
export GOROOT=$HOME/.local/go
export GOPATH=$PROGRAMMING/go
# BATROOT is needed for the installation and usage of bat.
export BATROOT=$HOME/.local/bat
# PANDOCROOT is needed for the installation and usage of pandoc.
export PANDOCROOT=$HOME/.local/pandoc
# Set PATH as necessary
export PATH=$PATH:$GOROOT/bin
export PATH=$PATH:$BATROOT/bin
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$PANDOCROOT/bin
