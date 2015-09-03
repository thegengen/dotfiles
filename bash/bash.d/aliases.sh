alias ls="ls -G"
alias sp="source ~/.bash_profile"
alias rdb="rdebug -Itest --no-stop"
alias ruby="ruby -Itest"

alias gemi="gem install --no-rdoc --no-ri"

alias be="bundle exec"
alias bi="bundle -j 4 --full-index"
alias mi="rake db:migrate && rake db:test:clone && rake annotate"
alias rb="rake db:rollback && rake annotate_models && rake db:test:clone"
alias less="less -r"
