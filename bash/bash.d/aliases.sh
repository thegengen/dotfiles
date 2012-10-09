alias ls="ls -G"
alias sp="source ~/.bash_profile"
alias rdb="rdebug -Itest --no-stop"

alias gemi="gem install --no-rdoc --no-ri"
alias tmkill="tmux kill-session -t"
alias tmlist="tmux list-sessions"

alias mi="rake db:migrate && rake db:test:clone && rake annotate"
alias rb="rake db:rollback && rake annotate_models && rake db:test:clone"
