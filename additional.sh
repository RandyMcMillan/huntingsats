#!/usr/bin/env bash

#count=$(wc -l $PWD/tokens_seed.txt | awk '{print substr($0,1,2)}')
export count
#echo $count
# count=5 && echo `expr 12 - $count`
gawk '
BEGIN   { srand(); c = 8 }
c/NR >= rand() { lines[x++ % c] = $0 }
END { for (i in lines)  print lines[i] }

' "$@"