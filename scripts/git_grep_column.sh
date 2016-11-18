#!/bin/sh

git grep -n -i -I $1 | while read git_grep; do

  file_and_line=$(echo "$git_grep" | cut -d: -f1-2)
  match=$(echo "$git_grep" | sed 's/[^:]*:[^:]*:\(.*\)/\1/')
  column=$(echo "$match" | awk "{IGNORECASE=1; print index(\$0, \"$1\")}")

  echo "$file_and_line:$column:$match"
done
