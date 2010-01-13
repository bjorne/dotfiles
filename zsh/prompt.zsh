function prompt_end() {
  prompt_end="%#"
  if [[ $UID == 0 ]] then
     prompt_end="%{$fg[red]%}%#%{$reset_color%}"
  fi
  echo $prompt_end
}

function prompt_host() {
  if [[ -n $SSH_CLIENT || -n $REMOTEHOST ]] then
    echo "%{$bold_color$fg[red]%}%m%{$reset_color%}."
  fi
}

PROMPT='[$(prompt_host)%{$bold_color$fg[yellow]%}%n%{$reset_color%}:%~]$(git_prompt_info)$(prompt_end) '
RPROMPT='%t %w'

ZSH_THEME_GIT_PROMPT_PREFIX="(%{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%})"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$bold_color%}*"
ZSH_THEME_GIT_PROMPT_CLEAN=""