# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/.local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  colored-man-pages
  last-working-dir
  tmux
  docker
)

source $ZSH/oh-my-zsh.sh

export EDITOR=vim

# Gopath configuration
export GOPATH=$HOME/Workspace/Go

# personal alias configuration
alias ncdu="ncdu --color dark -rr -x --exclude .git --exclude node_modules"
alias pass="gopass"

# Add fzf for shell history search
setopt hist_ignore_all_dups
source /usr/share/fzf/shell/key-bindings.zsh

# load gopass completion
source <(gopass completion zsh | head -n -1 | tail -n +2)
compdef _gopass gopass

# export a static SSH_AUTH_SOCK for ssh-agent
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

# improve ls color scheme
export LS_COLORS='di=94:fi=0:ln=92:pi=5:so=5:bd=5:cd=5:or=41'

# add 'n' alias to browse and cd to target directory
source ~/.local/share/zsh-functions/quitcd.bash_zsh
