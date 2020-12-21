#          _                   _   _
#  _______| |__     ___  _ __ | |_(_) ___  _ __  ___
# |_  / __| '_ \   / _ \| '_ \| __| |/ _ \| '_ \/ __|
#  / /\__ \ | | | | (_) | |_) | |_| | (_) | | | \__ \
# /___|___/_| |_|  \___/| .__/ \__|_|\___/|_| |_|___/
#                       |_|

# Options for history.
setopt append_history       # append
setopt hist_ignore_all_dups # no duplicate
setopt hist_reduce_blanks   # trim blanks
setopt inc_append_history   # add commands as they are typed, don't wait until shell exit
setopt share_history        # share hist between sessions

# Misc. options.
setopt correct             # try to correct spelling of commands
setopt extended_glob       # activate complex pattern globbing
setopt glob_dots           # include dotfiles in globbing
setopt print_exit_value    # print return value if non-zero
unsetopt beep              # no bell on error
unsetopt hist_beep         # no bell on error in history
unsetopt list_beep         # no bell on ambiguous completion
unsetopt rm_star_silent    # ask for confirmation for `rm *' or `rm path/*'
setopt interactivecomments # allow for comments in the shell

#
#        _ _
#   __ _| (_) __ _ ___  ___  ___
#  / _` | | |/ _` / __|/ _ \/ __|
# | (_| | | | (_| \__ \  __/\__ \
#  \__,_|_|_|\__,_|___/\___||___/
#

# Color aliases.
alias ls="ls --color=auto"
alias grep="grep --color=auto"
alias egrep="egrep --color=auto"
alias fgrep="fgrep --color=auto"

# Common ls aliases.
alias ll="ls -alF"
alias la="ls -A"
alias l="ls -CF"

## Common cd aliases.
alias cd..="cd .."
alias ..="cd .."
alias ...="cd ../../../"
alias ....="cd ../../../../"
alias .....="cd ../../../../"
alias .4="cd ../../../../"
alias .5="cd ../../../../.."
alias .6="cd ../../../../../.."

# NVM Stuff
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

#
#   __                  _   _
#  / _|_   _ _ __   ___| |_(_) ___  _ __  ___
# | |_| | | | '_ \ / __| __| |/ _ \| '_ \/ __|
# |  _| |_| | | | | (__| |_| | (_) | | | \__ \
# |_|  \__,_|_| |_|\___|\__|_|\___/|_| |_|___/
#

function fix_hist() {
    if ! command -v sponge &>/dev/null; then
        echo "missing requried sponge command"
        return
    fi
    strings <$HISTFILE | sponge $HISTFILE
    fc -R $HISTFILE
}

function update_plugins() {
    antibody bundle <$ZDOTDIR/plugins.txt >$ZDOTDIR/plugins.sh
}

function punchcard() {
    date "+'%g %b %d %I:%M%p"
}

function get_go() {
    # Change this link to the appropriate one for your system.
    local GO_DOWNLAOD=https://golang.org/dl/go1.15.6.linux-amd64.tar.gz
    # Download go if needed.
    if [[ ! -d $GOROOT ]]; then
        printf "\033[1;32m%s\033[0m %s\n" "Downloading" "go. . ."
        mkdir -p $GOROOT
        tar -C $HOME/.local -xzf <(curl -L $GO_DOWNLAOD)
        # Create GOPATH if needed.
        [ ! -d $GOPATH ] && mkdir -p $GOPATH
    fi
}

#              _   _ _               _
#   __ _ _ __ | |_(_) |__   ___   __| |_   _
#  / _` | '_ \| __| | '_ \ / _ \ / _` | | | |
# | (_| | | | | |_| | |_) | (_) | (_| | |_| |
#  \__,_|_| |_|\__|_|_.__/ \___/ \__,_|\__, |
#                                      |___/
if [[ ! -d $ANTIBODYHOME ]]; then
    mkdir -p $ANTIBODYHOME/bin
    curl -sfL git.io/antibody | sh -s - -b $ANTIBODYHOME/bin
fi
[ ! -f $ZDOTDIR/plugins.sh ] && update_plugins
source $ZDOTDIR/plugins.sh

#                            _      _   _
#   ___ ___  _ __ ___  _ __ | | ___| |_(_) ___  _ __  ___
#  / __/ _ \| '_ ` _ \| '_ \| |/ _ \ __| |/ _ \| '_ \/ __|
# | (_| (_) | | | | | | |_) | |  __/ |_| | (_) | | | \__ \
#  \___\___/|_| |_| |_| .__/|_|\___|\__|_|\___/|_| |_|___/
#                     |_|
autoload -Uz compinit
compinit -c
