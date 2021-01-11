# apps
alias rsyncmusic="~/.apps/rsyncmusic.sh"

# general
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias fix='$(thefuck $(fc -ln -1))'

# blog
alias serveBlog="bundle exec jekyll serve --watch"

alias gti="git"

alias android_emulator="cd ~/Library/Android/sdk/tools; ./emulator -avd Nexus_5X_API_28_x86 &"

alias reverseProxy="ssh -R 80:localhost:19006 ssh.localhost.run"

alias recordSim="xcrun simctl io booted recordVideo file.mov"

alias androidReverse="adb -s FA7A41A01597 reverse tcp:8081 tcp:8081"
