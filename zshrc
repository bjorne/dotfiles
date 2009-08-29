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

prompt_end="%#"
if [[ $UID == 0 ]] then
   prompt_end="%{$fg[red]%}%#%{$reset_color%}"
fi

if [[ -n $SSH_CLIENT || -n $REMOTEHOST ]] then
    PS1="[%{$bold_color$fg[red]%}%m%{$reset_color%}.%{$bold_color$fg[yellow]%}%n%{$reset_color%}:%~]$prompt_end "
else
    PS1="[%{$bold_color$fg[yellow]%}%n%{$reset_color%}:%~]$prompt_end "
fi
RPROMPT='%t %w' 

# End of prompt

# Fink setup
test -r /sw/bin/init.sh && . /sw/bin/init.sh 

export EDITOR="emacs"
