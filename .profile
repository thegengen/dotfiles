LESS_GIT="git+ssh://lesseverything.com/git"
LESS_SVN="svn+ssh://lesseverything.com/svn"
BATMAN="batman.lesseverything.com"
ICEMAN="iceman.lesseverything.com"
IRONMAN="ironman.lesseverything.com"
GL="greenlantern.lesseverything.com"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

alias ls="ls -G"
alias sp="source ~/.profile"
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

alias mi="rake db:migrate && rake db:test:clone && rake annotate_models"
alias rb="rake db:rollback && rake annotate_models && rake db:test:clone"

export RUBY_HEAP_MIN_SLOTS=1000000
export RUBY_HEAP_SLOTS_INCREMENT=1000000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=1000000000
export RUBY_HEAP_FREE_MIN=500000

if [[ -s /Users/minciue/.rvm/scripts/rvm ]] ; then source /Users/minciue/.rvm/scripts/rvm ; fi
export PS1="\W(\$(~/.rvm/bin/rvm-prompt i v g))$ "
export PATH=/opt/local/bin:/opt/local/sbin:/usr/local/sbin:/usr/local/bin:$PATH
export MANPATH=/opt/local/share/man:$MANPATH
