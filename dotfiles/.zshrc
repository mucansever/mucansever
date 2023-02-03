# duplicate history when reverse-searching my commands
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=5000
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt incappendhistory
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

alias python=/usr/local/bin/python3.10
alias tre='tree -L 1'
alias tree='tree -L 2'

export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=${PATH}:$GOBIN

# highlight selections
zstyle ':completion:*' menu select
autoload -U compinit && compinit
zmodload -i zsh/complist

# change prompt color
autoload -U colors && colors
export PS1="%F{214}%K{000}%m%F{015}%K{000}@%F{039}%K{000}%~%F{015}%K{000}\$ "


source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

source "$HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
