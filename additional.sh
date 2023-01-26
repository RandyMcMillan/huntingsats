#!/usr/bin/env bash

count=$(wc -l $(PWD)/tokens_seed.txt)
export count
#echo $count
gawk '
BEGIN   { srand(); c = $(eval 12 - $count) }
c/NR >= rand() { lines[x++ % c] = $0 }
END { for (i in lines)  print lines[i] }

' "$@"