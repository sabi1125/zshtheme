local current_dir="%B%F{green}%~%f%b"
local git_branch='$(git_prompt_info)'
local time='%B%F{green}%*%f%b'
local git_status='$(git_prompt_status)'

# constantly update time
TMOUT=1

TRAPALRM() {
    zle reset-prompt
}

# git related
ZSH_THEME_GIT_PROMPT_PREFIX='%F{red}'
ZSH_THEME_GIT_PROMPT_SUFFIX=' %f'
ZSH_THEME_GIT_PROMPT_DIRTY='%F{red} 󰛞'
ZSH_THEME_GIT_PROMPT_CLEAN=' %F{red} '
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%} "
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[green]%} 󰛞"

PROMPT="%F{green}󰌽 ${time} ${git_status} %f
%F{red}╭─%F{$reset_color%} %F{green}${current_dir}%F{$reset_color}%F{red} ${git_branch}%F{$reset_color}
%F{red}╰─➤ %f" 

RPROMPT=" "
