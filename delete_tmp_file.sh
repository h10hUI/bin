#!/bin/sh
# $B%@%&%s%m!<%I%U%)%k%@(B1$BF|0J>eA0:o=|(B
find $HOME/Downloads/* -ctime +1 -print0 | xargs -0 rm -rf
# $B%G%9%/%H%C%W%U%)%k%@(B1$BF|0J>eA0:o=|(B
find $HOME/Desktop/* -ctime +1 -print0 | xargs -0 rm -rf
