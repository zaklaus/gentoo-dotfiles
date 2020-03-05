#!/bin/zsh

plugins=(
  git
  k
  zsh-autosuggestions
)

export PATH=$HOME/bin:/usr/local/go/bin:/usr/local/bin:$HOME/go/bin:$PATH
export ZSH="$HOME/.oh-my-zsh"
export EDITOR=nvim
#export ZSH_THEME="robbyrussell"
export LANG=en_US.UTF-8
export TERM=screen-256color
source $ZSH/oh-my-zsh.sh
ulimit -c unlimited

autoload -U colors && colors
#PS1="┌─┤%*│%{$fg_bold[green]%}%n%{$fg_no_bold[green]%}@%m:%{$fg_bold[blue]%}%~
#%{$reset_color%}└───╼ "
PS1="┭─┤%*│%{$fg_bold[green]%}%n%{$fg_bold[yellow]%}@%m:%{$fg_bold[blue]%}%~
#%{$reset_color%}┵───╼ "
PS2="────╼ "
[ -n "$RANGER_LEVEL" ] && PS1="$PS1"'(in ranger) '

HISTFILE=~/.histfile
HISTSIZE=10240
SAVEHIST=10240000
setopt appendhistory
unsetopt beep
bindkey -e

zstyle ':completion:*' list-colors ''               
zstyle ':completion:*' menu select=1
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle :compinstall filename '/home/zaklaus/.zshrc'

autoload -Uz compinit && compinit
# stuff

if [ -n "$DISPLAY" ]; then
        export BROWSER="firefox"
else
        export BROWSER="elynx"
fi

export GREP_COLORS="ms=00;33:mc=00;33"
#export IPLAYER_OUTDIR="/home/zaklaus/Media/Videos/TV Programmes/iPlayer/"
export MANPAGER="/usr/local/bin/zsh -c \"col -bx | nvim -c 'set ft=man' -\"" #http://www.reddit.com/r/vim/comments/23u4ly/what_other_apps_are_vimlike/ch0ykcy
export PAGER=less
export RANGER_LOAD_DEFAULT_RC="FALSE"
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE=fg=8
export BUG_PROJECT=$HOME/todo.txt

fortune | cowsay

if [ -f ~/.keys ]; then
	. ~/.keys
fi

if [ -f ~/.aliases ]; then
	. ~/.aliases
fi

function assh {
	autossh -o "ServerAliveInterval 30" -o "ServerAliveCountMax 3" -M 0 $@
}

alias dog='pygmentize -g'

function zemacs {
	emacs -nw $@
}
