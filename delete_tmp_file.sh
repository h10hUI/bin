#!/bin/sh
# ダウンロードフォルダ1日以上前削除
#find ~/Downloads/* -ctime +1 -print0 >/dev/null 2>&1 | xargs -J% mv % ~/.Trash
find ~/Downloads/* -ctime +1 -print0 | xargs -J% mv % ~/.Trash
# デスクトップフォルダ1日以上前削除
#find ~/Desktop/* -ctime +1 -print0 >/dev/null 2>&1 | xargs -J% mv % ~/.Trash
find ~/Desktop/* -ctime +1 -print0 | xargs -J% mv % ~/.Trash
# vimの不要ファイル削除
#find ~/.vim/undo/* -ctime +2 -print0 | xargs  rm -rf
#find ~/.vim/backup/* -ctime +2 -print0 | xargs rm -rf
find ~/.vim/undo/* -ctime +2 -print0 >/dev/null 2>&1 | xargs  rm -rf
find ~/.vim/backup/* -ctime +2 -print0 >/dev/null 2>&1 | xargs rm -rf
# .DS_Store削除
find ~ -not -iwholename "* *" -not -iwholename "*/Gdrive/*" -type f -name "*.DS*" | xargs rm -rf
