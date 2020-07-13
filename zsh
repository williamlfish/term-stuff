# If you come from bash you might have to change your $PATH.
 export PATH=$HOME/bin:/usr/local/bin:/Users/<user>/go/bin:$PATH
 #Path to your oh-my-zsh installation.
export ZSH="/Users/wfish/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git kube-ps1)
autoload -U colors; colors

function kcontext() {
    c=$(kubectl config current-context)
    echo $c
}
RPROMPT='%{$fg[cyan]%}$(kcontext)%{$reset_color%}'
export PATH
alias ll="ls -lah"
alias dc="docker-compose"
alias cleardns='sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder; echo cache flushed'

export GO111MODULE=on
alias k=kubectl
alias cleand='docker images | grep "<none>" | awk '{print $3}' | xargs docker rmi'
unset zle_bracketed_paste

source $ZSH/oh-my-zsh.sh
