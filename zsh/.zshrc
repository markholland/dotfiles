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
eval "$(fnm env --use-on-cd)"
eval "$(jenv init -)"
eval "$(rbenv init - zsh)"

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
export PATH=$PATH:"$HOME/Library/Python/3.8/bin"
export PATH=$PATH:$HOME/.maestro/bin
export PATH="$HOME/.jenv/bin:$PATH"
# export JAVA_HOME=`/usr/libexec/java_home -v 11.0.20` # Zulu 11
export JAVA_HOME=`/usr/libexec/java_home -v 17.0.9` # Zulu 17
# export JAVA_HOME=`/usr/libexec/java_home -v 1.8.0_382` # Corretto 8

export ANDROID_EMULATOR_WAIT_TIME_BEFORE_KILL=1
export BIMSYNC_LOCAL_STORAGE="$HOME/Documents/catenda/bimsync/ignoreStorage"
export BROWSERSLIST_DISABLE_CACHE=1
export BROWSERSLIST_IGNORE_OLD_DATA=true
export CLOUD_ENVIRONMENT='local'
export REACT_NATIVE_DOWNLOADS_DIR="$HOME/Downloads/"

# zsh highlighting
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
ZSH_HIGHLIGHT_STYLES[globbing]='fg=yellow'
ZSH_HIGHLIGHT_STYLES[default]='bold'
ZSH_HIGHLIGHT_STYLES[path]='none'
