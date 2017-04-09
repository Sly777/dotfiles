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


