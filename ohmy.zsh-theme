local current_dir="%B%F{green}%~%f%b"
local git_branch='$(git_prompt_info)'
local time='%B%F{green}%*%f%b'
local git_status='$(git_prompt_status)'

TMOUT=1;
TRAPALRM() { # cspell:disable-line
    # $(git_prompt_info) cost too much time which will raise stutters when inputting. so we need to disable it in this occurrence.
    # if [ "$WIDGET" != "expand-or-complete" ] && [ "$WIDGET" != "self-insert" ] && [ "$WIDGET" != "backward-delete-char" ]; then
    # black list will not enum it completely. even some pipe broken will appear.
    # so we just put a white list here.
    if [ "$WIDGET" = "" ] || [ "$WIDGET" = "accept-line" ] ; then
        zle reset-prompt;
    fi
}
ZSH_THEME_GIT_PROMPT_PREFIX='%F{red}%f'
ZSH_THEME_GIT_PROMPT_SUFFIX=' %f'
ZSH_THEME_GIT_PROMPT_DIRTY='%F{red} 󰛞%f'
ZSH_THEME_GIT_PROMPT_CLEAN=' %F{red} %f'
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[red]%} %f"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[red]%} 󰛞%f"

PROMPT="%F{green}󰌽 ${time}%f ${git_status} %f
%F{red}╭─ %f%F{green}${current_dir}%f%F{$reset_color}%F{red} ${git_branch}%f
%F{red}╰─➤ %f"
