local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"

function get_pwd(){
  git_root=$PWD
  while [[ $git_root != / && ! -e $git_root/.git ]]; do
    git_root=$git_root:h
  done
  if [[ $git_root = / ]]; then
    unset git_root
    prompt_short_dir=%~
  else
    parent=${git_root%\/*}
    prompt_short_dir=${PWD#$parent/}
  fi
  echo $prompt_short_dir
}

PROMPT='╭─ $fg_bold[white]$(get_pwd) $(git_prompt_info)
╰$ret_status%{$reset_color%}'
#PROMPT='╭─ %{$fg[white]%}$(get_pwd) %{$reset_color%}$(git_prompt_info)%{$reset_color%} 
#╰$ret_status'
# PROMPT='$ret_status %{$fg[white]%}%{$reset_color%}'

# color vars
eval my_gray='$FG[237]'
eval my_orange='$FG[214]'

# git settings
ZSH_THEME_GIT_PROMPT_PREFIX="$FG[075]"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="$my_orange*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="$FG[075]%{$reset_color%}"

