# history

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

setopt share_history # share command history data

# key bindings

autoload -U compinit
compinit

bindkey -e

# Color grep results
# Examples: http://rubyurl.com/ZXv
#
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;32'

# fink
test -r /sw/bin/init.sh && . /sw/bin/init.sh

# editor
export EDITOR=emacs
