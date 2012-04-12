export EDITOR=vim



LESS_GIT="git+ssh://lesseverything.com/git"
LESS_SVN="svn+ssh://lesseverything.com/svn"
BATMAN="batman.lesseverything.com"
ICEMAN="iceman.lesseverything.com"
IRONMAN="ironman.lesseverything.com"
GL="greenlantern.lesseverything.com"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

alias ls="ls -G"
alias sp="source ~/.bash_profile"
alias m="mate ."
alias bx="bundle exec"
alias ss="./script/server --debugger"
alias sc="./script/console --debugger"
alias sr="./script/rails"
alias sg="./script/generate"
alias lt="./script/less_test"
alias dbc="script/dbconsole"
alias rdb="rdebug -Itest --no-stop"

alias v="mvim"
alias gemi="gem install --no-rdoc --no-ri"
alias geme="gem edit -e mvim"
alias tmkill="tmux kill-session -t"
alias tmlist="tmux list-sessions"

alias mi="rake db:migrate && rake db:test:clone && rake annotate_models"
alias rb="rake db:rollback && rake annotate_models && rake db:test:clone"

export RUBY_HEAP_MIN_SLOTS=1000000
export RUBY_HEAP_SLOTS_INCREMENT=1000000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=1000000000
export RUBY_HEAP_FREE_MIN=500000
export RUBYOPT="-Ilib:test"

parse_git_branch() {
  if [ -d .git ]
  then
    echo -n ' ['
    git branch 2> /dev/null | sed -e '/^[^*]/d' | tr -d '* ' | tr -d '\n'
    echo -n ': '
  fi
}

get_git_changes() {
  if [ -d .git ] 
  then 
    git status --short | wc -l | sed -e 's|[^0-9]*||' | sed -e 's|\n||' | tr -d '\n'
    echo -n ']'
  fi
}
export -f parse_git_branch
export -f get_git_changes
export PS1="\W \[\033[0;34m\][\$(~/.rvm/bin/rvm-prompt i v g)]\[\033[0;31m\]\$(parse_git_branch)\$(get_git_changes)\[\033[0m\] :) "

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator
