#!/bin/sh
# ダウンロードフォルダ1日以上前削除
find ~/Downloads/* -ctime +1 -print0 | xargs -J% mv % ~/.Trash
# デスクトップフォルダ1日以上前削除
find ~/Desktop/* -ctime +1 -print0 | xargs -J% mv % ~/.Trash
# スクリーンショット1日以上前削除
find ~/Desktop/* -name "スクリーンショット*" -ctime +1 -print0 | xargs rm -rf
# vimの不要ファイル削除
find ~/.config/nvim/undo/* -ctime +2 -print0 | xargs  rm -rf
find ~/.config/nvim/backup/* -ctime +2 -print0 | xargs rm -rf
# .DS_Store削除
find ~ -not -iwholename "* *" -not -iwholename "*/Gdrive/*" -type f -name "*.DS*" | xargs rm -rf
