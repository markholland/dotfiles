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


export ANDROID_HOME="$HOME/Library/Android/sdk"
export ANDROID_AVD_HOME="$HOME/.android/avd"
export ANDROID_SDK_ROOT="$HOME/Library/Android/sdk"
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/cmdline-tools/latest/bin
export PATH=$PATH:/opt/homebrew/bin
export PATH=$PATH:/usr/local/bin

# zsh highlighting
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
ZSH_HIGHLIGHT_STYLES[globbing]='fg=yellow'
ZSH_HIGHLIGHT_STYLES[default]='bold'
ZSH_HIGHLIGHT_STYLES[path]='none'
