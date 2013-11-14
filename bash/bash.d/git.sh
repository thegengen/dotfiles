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
