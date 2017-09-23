local ret_status="%(?:%{$fg_bold[green]%}•:%{$fg_bold[red]%}• )"
PROMPT='${ret_status} %{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info)
%B${user_symbol}%b '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

if [[ $UID -eq 0 ]]; then
  local user_host='%{$terminfo[bold]$fg[red]%}%n@%m%{$reset_color%}'
  local user_symbol='#'
else
  local user_host='%{$terminfo[bold]$fg[green]%}%n@%m%{$reset_color%}'
  local user_symbol='$'
fi
