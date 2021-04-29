export ZSH=$HOME/.oh-my-zsh
export GPG_TTY=$(tty)
export LANG=en_US.UTF-8

ZSH_THEME="sharp"

COMPLETION_WAITING_DOTS="true"

DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(gitfast adb last-working-dir)

ZSH_DISABLE_COMPFIX=true
source $ZSH/oh-my-zsh.sh
source ~/.zsh/aliases.zsh

eval "$(fnm env)"

# zsh highlighting
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
ZSH_HIGHLIGHT_STYLES[globbing]='fg=yellow'
ZSH_HIGHLIGHT_STYLES[default]='bold'
ZSH_HIGHLIGHT_STYLES[path]='none'

