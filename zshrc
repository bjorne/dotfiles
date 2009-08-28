# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _approximate
zstyle ':completion:*' max-errors 5 numeric
zstyle ':completion:*' prompt 'completions (%e errors)'
zstyle :compinstall filename '/home/bjorne/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install

# Functions

namedir () { $1=$PWD ;  : ~$1 }

# End of functions

# Prompt with colors

autoload -U colors
colors

if [[ -n $SSH_CLIENT || -n $REMOTEHOST ]] then
    echo "we are here"
    PS1="[%n@%{$bold_color$fg[red]%}%m%{$reset_color%}:%~]%# "
else
    PS1="[%{$bold_color$fg[red]%}%m%{$reset_color%}:%~]%# "
fi
RPROMPT='%t %w' 

# End of prompt

# 

export EDITOR="emacs"
