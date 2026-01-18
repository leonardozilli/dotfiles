PROMPT="%(?:%{$fg_bold[yellow]%} ➜:%{$fg_bold[red]%} ➜)"
PROMPT+=' %{$fg[white]%}%c%{$reset_color%} $(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}[git:"
ZSH_THEME_GIT_PROMPT_SUFFIX=" "
ZSH_THEME_GIT_PROMPT_DIRTY="]%{$fg[white]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="]"
