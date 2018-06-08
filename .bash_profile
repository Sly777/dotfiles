shortcutsfile=~/.shortcuts
if [ ! -f "$shortcutsfile" ] 
then
  touch "$shortcutsfile"
fi

function shortcut {
  command="alias $1='cd $PWD'"
  echo "$command" >> "$shortcutsfile"
  source ~/.bash_profile
}

function rshortcut {
  line="/alias $1=.*/d"
  sed -i '' "$line" "$shortcutsfile"
  unalias "$1"
  source ~/.bash_profile
}

source "$shortcutsfile"

unamestr=$(uname -a)
if [[ "$unamestr" == *'Darwin'* ]] 
then
  alias "ij=open -a /Applications/IntelliJ\ IDEA\ CE.app"
fi

#todos
source ~/scripts/todo/todos.sh
#alias 
## git
alias gc="git commit"
alias gst="git status"
alias ga.="git add ."
alias gp="git push"
## todo
alias atd="add-todo"



