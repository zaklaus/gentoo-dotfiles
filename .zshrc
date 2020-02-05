#!/bin/zsh

plugins=(
  git
  k
  zsh-autosuggestions
)

export PATH=$HOME/bin:/usr/local/go/bin:/usr/local/bin:$HOME/go/bin:$PATH
export ZSH="$HOME/.oh-my-zsh"
export EDITOR=nvim
export ZSH_THEME="gnzh"
source $ZSH/oh-my-zsh.sh

autoload -U colors && colors
#PS1="┌─┤%*│%{$fg_bold[green]%}%n%{$fg_no_bold[green]%}@%m:%{$fg_bold[blue]%}%~
#%{$reset_color%}└───╼ "
#PS1="┭─┤%*│%{$fg_bold[green]%}%n%{$fg_bold[yellow]%}@%m:%{$fg_bold[blue]%}%~
#%{$reset_color%}┵───╼ "
#PS2="────╼ "
#[ -n "$RANGER_LEVEL" ] && PS1="$PS1"'(in ranger) '

HISTFILE=~/.histfile
HISTSIZE=10240
SAVEHIST=10240000
setopt appendhistory
unsetopt beep
bindkey -e

# stuff

if [ -n "$DISPLAY" ]; then
        export BROWSER="krusader"
else
        export BROWSER="elinks"
fi

export TERM=xterm-256color
export GREP_COLORS="ms=00;33:mc=00;33"
#export IPLAYER_OUTDIR="/home/zaklaus/Media/Videos/TV Programmes/iPlayer/"
#export MANPAGER="/bin/zsh -c \"col -bx | vim -c 'set ft=man' -\"" #http://www.reddit.com/r/vim/comments/23u4ly/what_other_apps_are_vimlike/ch0ykcy
export PAGER="/usr/bin/pager"
export RANGER_LOAD_DEFAULT_RC="FALSE"
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE=fg=8

fortune

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
