#!/bin/sh

gawk '
BEGIN   { srand(); c = 5 }
c/NR >= rand() { lines[x++ % c] = $0 }
END { for (i in lines)  print lines[i] }

' "$@"