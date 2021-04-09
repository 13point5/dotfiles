# Aliases I actually use

# normal stuff
alias l="ls -lhaF"
alias ..="cd .."
alias ...="cd ../.."

mkcd () {
  mkdir -pv -- "$1" && cd -- "$1"
}

# apt
alias apt="sudo apt-get -y"

# wsl ubuntu services
alias su-ser="sudo service"

# wsl DB services setup
alias dbsup="su-ser mongodb start;su-ser redis-server start;su-ser postgresql start;"

# vscode
alias c="code ."

# react
alias ncra="npx create-react-app"
alias rchain="exec 3<&1;bash <&3 <(curl https://raw.githubusercontent.com/13point5/react-toolchain/main/toolchain.sh 2> /dev/null)"

# git
alias ga="git add"
alias gaa="ga ."
alias gcm="git commit"
alias gpush="git push"
alias gacm="gaa && gcm"
alias gacp="gaa && gcm && gpush"
alias gstat="git status"
alias gpull="git pull"
alias gsu="git push --set-upstream origin $(git symbolic-ref --short HEAD)"