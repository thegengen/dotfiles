alias ls="ls -G"
alias sp="source ~/.bash_profile"
alias ss="./script/rails server"
alias sc="./script/rails console"
alias sg="./script/rails generate"
alias lt="./script/less_test autotest"
alias dbc="script/dbconsole"
alias rdb="rdebug -Itest --no-stop"

alias v="mvim"
alias gemi="gem install --no-rdoc --no-ri"
alias tmkill="tmux kill-session -t"
alias tmlist="tmux list-sessions"

alias mi="rake db:migrate && rake db:test:clone && rake annotate"
alias rb="rake db:rollback && rake annotate_models && rake db:test:clone"

alias guard="bundle exec guard"

alias python="python3"
alias easy_install="/usr/local/share/python3/easy_install"
