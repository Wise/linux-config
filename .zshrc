source ~/.profile
source ~/.alias_perso

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# startup
setxkbmap fr
xset b off
synclient TapButton1=1
synclient TapButton2=2

# general alias
alias v="vim"
alias ..="cd .."
alias ...="cd ../.."
alias ...="cd ../../.."
alias ls="ls --color"
alias ll="ls -lh --color"
alias la="ls -la --color"
alias s="find . -name"
alias night="redshift -O 3200 -b "
alias day="redshift -O 5500 -b "
alias suspend="systemctl suspend"
alias reboot="systemctl reboot"
alias halt="systemctl halt"
alias batt="upower -i /org/freedesktop/UPower/devices/battery_BAT0"
alias t="trash" # trash-cli alias, mv file to trash instead of rm

# ruby alias
alias rb="ruby"

# rails alias
alias rack="ack --ignore-dir=tmp --ignore-dir=log"
alias rs="rails s"
alias rc="rails c"
alias rg="rails g "
alias rr="rake routes"
alias sr="rake routes | ack"
alias rdbm="rake db:migrate"
alias reset_db="rake db:drop db:create db:migrate"
alias bi="bundle install"
alias bu="bundle update"
alias dj="rake jobs:clear jobs:work"

# git alias
alias amend="git commit --amend"
alias gci="git commit -m"
alias gp="git push"
alias gpl="git pull"
alias gst="git status -s"
alias gm="git merge"
alias gco="git checkout"
alias ga="git add"
alias gau="git add -u"
alias gd="git diff"
alias gb="git branch"
alias gl="git log"
alias gs="git stash"

# heroku alias
alias hh="heroku"
alias h="./h.py"

# functions
function calc() {
    echo "$1" |bc -l
}

# locales
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

# default editor
export VISUAL=vim
export EDITOR="$VISUAL"

# custom path
export PATH="/usr/local/heroku/bin:$PATH"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
