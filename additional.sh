#!/usr/bin/env bash

count=$(wc -l $(PWD)/tokens_seed.txt)
gawk '
BEGIN   { srand(); c = $(eval 12 - $count) }
c/NR >= rand() { lines[x++ % c] = $0 }
END { for (i in lines)  print lines[i] }

' "$@"