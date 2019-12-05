#!/bin/bash -ex

# ダウンロードフォルダ1日以上前削除
/usr/bin/find ~/Downloads/* -ctime +1 -print0 | xargs -0 -J% mv % ~/.Trash
# デスクトップフォルダ1日以上前削除
/usr/bin/find ~/Desktop/* -ctime +1 -print0 | xargs -0 -J% mv % ~/.Trash
# スクリーンショット90分以上前削除
/usr/bin/find ~/Desktop/* -name "スクリーンショット*" -mmin +90 -print0 | xargs -0 rm -rf
# vimの不要ファイル削除
/usr/bin/find ~/.config/nvim/undo/* -ctime +2 -print0 | xargs -0  rm -rf
/usr/bin/find ~/.config/nvim/backup/* -ctime +2 -print0 | xargs -0 rm -rf
# .DS_Store削除
/usr/bin/find ~/Desktop -type f -iwholename "*ds_store*" -print0 | xargs -0 rm -rf
/usr/bin/find ~/Downloads -type f -iwholename "*ds_store*" -print0 | xargs -0 rm -rf
/usr/bin/find ~/workspace -type f -iwholename "*ds_store*" -print0 | xargs -0 rm -rf
/usr/bin/find ~ -maxdepth 1 -type f -iwholename "*ds_store*" -print0 | xargs -0 rm -rf

