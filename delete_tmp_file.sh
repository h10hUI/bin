#!/bin/sh
# ダウンロードフォルダ1日以上前削除
find ~/Downloads/* -ctime +1 -print0 | xargs -0 -J% mv % ~/.Trash
# デスクトップフォルダ1日以上前削除
find ~/Desktop/* -ctime +1 -print0 | xargs -0 -J% mv % ~/.Trash
# スクリーンショット1日以上前削除
find ~/Desktop/* -name "スクリーンショット*" -nmin +60 -print0 | xargs -0 rm -rf
# vimの不要ファイル削除
find ~/.config/nvim/undo/* -ctime +2 -print0 | xargs -0  rm -rf
find ~/.config/nvim/backup/* -ctime +2 -print0 | xargs -0 rm -rf
# .DS_Store削除
find ~/Desktop ~/Downloads ~/workspace -type f -name ".DS_*" | xargs rm -rf
