ZSH_DIR=$HOME/.zsh

# Set it all up
for config_file ($ZSH_DIR/lib/*.zsh) source $config_file

# Set up prompt
source $HOME/.zsh/prompt.zsh

# Local config
source $HOME/.zsh/local.zsh