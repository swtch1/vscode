#!/bin/bash

# Create a Golang scratch file in a scratches directory.  Count up until a new one can be made.

workspaceRoot=$1

c=1
f=scratch$c.go
while true;do
  if [[ -e $f ]];then
    c=$((c+1))
    f=scratch$c.go
    continue
  else
    echo 'package main\n\nfunc main() {\n\n}' > $workspaceRoot/scratches/$f
  fi
  break
done

