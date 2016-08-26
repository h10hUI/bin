#!/bin/sh
# ダウンロードフォルダ1日以上前削除
find $HOME/Downloads/* -ctime +1 -print0 | xargs -J% mv % $HOME/.Trash
# デスクトップフォルダ1日以上前削除
find $HOME/Desktop/* -ctime +1 -print0 | xargs -J% mv % $HOME/.Trash 
# vimの不要ファイル削除
find $HOME/.vim/undo/* -ctime +2 -print0 | xargs  rm -rf
find $HOME/.vim/backup/* -ctime +2 -print0 | xargs rm -rf
# .DS_Store削除
find $HOME/* -name "*.DS_Store" | xargs rm -rf
