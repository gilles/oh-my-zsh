
function hg_prompt_info {
    hg prompt --angle-brackets "\
<hg:\
<%{$fg[magenta]%}[+<incoming|count>]-%{$reset_color%}>\
%{$fg[magenta]%}<branch>%{$reset_color%}>\
<%{$fg[magenta]%}-[+<outgoing|count>]%{$reset_color%}>\
</%{$fg[yellow]%}<tags|%{$reset_color%}, %{$fg[yellow]%}>%{$reset_color%}>\
%{$fg[red]%}<status|modified|unknown><update>%{$reset_color%}
<patches: <patches|join( → )|pre_applied(%{$fg[yellow]%})|post_applied(%{$reset_color%})|pre_unapplied(%{$fg_bold[black]%})|post_unapplied(%{$reset_color%})>>" 2>/dev/null
}

local prefix="%{$fg_bold[red]%}➜ "
local current_path="%{$fg[magenta]%}%~"
local current_ruby='%{$fg[cyan]%}$(rvm_prompt_info)'
local current_git='%{$fg_bold[blue]%}$(git_prompt_info)'
local current_mercurial='%{$fg_bold[blue]%}$(hg_prompt_info)'

PROMPT="${prefix} ${current_path} ${current_ruby} ${current_git}${current_mercurial} %{$reset_color%}
$ "

ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

#not using them but we never know
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%} ✚"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg_bold[blue]%} ✹"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%} ✖"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[magenta]%} ➜"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[yellow]%} ═"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[cyan]%} ✭"
