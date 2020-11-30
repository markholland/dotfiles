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

alias startWeb="cd ~/Documents/mixie/mixie-web/ && env BROWSER=Firefox\ Developer\ Edition expo start:web"
alias startMobile="cd ~/Documents/mixie/mixie-mobile/ && env BROWSER=Firefox\ Developer\ Edition expo start"

alias recordSim="xcrun simctl io booted recordVideo file.mov"

# Mixie
alias initDb='docker exec -it mixie-backend_mixieapp-mysql_1 mysql -u root -ppassword mixie -e "$(cat ./mixie-db.sql)"'
alias startServer='./mvnw spring-boot:run -Dspring-boot.run.arguments=--server.port=8081,--spring.profiles.active=dev'
