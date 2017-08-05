# oh-my-zsh stuff
export ZSH=/home/embik/.oh-my-zsh

ZSH_THEME="kolo-lambda"
plugins=(pass git pip python sudo tmux colored-man-pages last-working-dir docker)

source $ZSH/oh-my-zsh.sh

# Preferred editor
export EDITOR='nvim'
export ECTO_EDITOR=$EDITOR
alias vim=$EDITOR

export GOPATH=/home/embik/.local/golang

# Add user-specific bin directories to $PATH
export PATH=/home/embik/.local/golang/bin:$PATH
export PATH=/home/embik/.local/bin:$PATH

# Add superuser binaries to $PATH for autocomplete
export PATH=$PATH:/usr/sbin:/sbin

# Fix language (I don't remember what I need this for)
export LANG=de_DE.UTF-8
export LC_ALL=de_DE.UTF-8

export GPG_TTY=$(tty)

umask 077

# Quick alias collection
alias backup-home="borg create -C zlib -v --stats --progress --exclude '/home/embik/.cache/*' --exclude '/home/embik/.cargo/*' --exclude '/home/embik/.npm/*' --exclude '/home/embik/.hex/*' --exclude '/home/embik/Android/Sdk/*' /media/draid/borg-repo::'{hostname}-{now:%Y-%m-%d}' /home/embik/"
alias emerge-update="sudo emerge --quiet --ask --update --changed-use --newuse --with-bdeps=y --deep @world"
alias page="nvimpager"
alias lisa="ls -lisah"
alias mutt="offlineimap && mutt"
