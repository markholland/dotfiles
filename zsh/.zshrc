# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export LANG=en_US.UTF-8

ZSH_THEME="sharp"

COMPLETION_WAITING_DOTS="true"

DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(git gitfast adb last-working-dir)

ZSH_DISABLE_COMPFIX=true
source $ZSH/oh-my-zsh.sh
source ~/dotfiles/zsh/.zsh/aliases.zsh

eval "$(fnm env)"

export ANDROID_HOME="/Users/markholland/Library/Android/sdk"

export PATH=$PATH:${ANDROID_HOME}/tools:${ANDROID_HOME}/tools/bin:${ANDROID_HOME}/build-tools/28.0.3:${ANDROID_HOME}/platform-tools
export PATH="/usr/local/opt/ruby/bin:$PATH"

export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).

# zsh highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
ZSH_HIGHLIGHT_STYLES[globbing]='fg=yellow'
ZSH_HIGHLIGHT_STYLES[default]='bold'
ZSH_HIGHLIGHT_STYLES[path]='none'
