#!/bin/sh
# ダウンロードフォルダ1日以上前削除
find $HOME/Downloads/* -ctime +1 -print0 | xargs -J% mv % $HOME/.Trash
# デスクトップフォルダ1日以上前削除
find $HOME/Desktop/* -ctime +1 -print0 | xargs -J% mv % $HOME/.Trash 
