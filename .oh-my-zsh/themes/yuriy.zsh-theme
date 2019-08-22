ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}(%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%})"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[red]%}*"
ZSH_THEME_GIT_PROMPT_CLEAN=""

PROMPT='$(kube_ps1)%{$fg[yellow]%}${PWD/#$HOME/~}$(git_prompt_info)%{$reset_color%} $'
RPROMPT=''
