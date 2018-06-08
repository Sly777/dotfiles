#!/bin/bash
todos_file=~/todos-inbox.txt

function add-todo {
  echo "@ "${1} >> $todos_file
}

function todos { 
  open $todos_file
}
