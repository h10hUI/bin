#!/bin/bash -ex

# ダウンロードフォルダ1日以上前削除
/usr/bin/find $HOME/Downloads/* -mmin +1440 -print0 | xargs -0 -J% mv % $HOME/.Trash
# デスクトップフォルダ1日以上前削除
/usr/bin/find $HOME/Desktop/* -mmin +1440 -print0 | xargs -0 -J% mv % $HOME/.Trash
# スクリーンショット90分以上前削除
/usr/bin/find $HOME/Desktop -name "スクリーンショット*" -mmin +90 -print0 | xargs -0 rm -rf
# vimの不要ファイル削除
/usr/bin/find $HOME/.config/nvim/undo -mmin +10080 -print0 | xargs -0  rm -rf && /bin/mkdir $HOME/.config/nvim/undo
/usr/bin/find $HOME/.config/nvim/backup -mmin +10080 -print0 | xargs -0 rm -rf && /bin/mkdir $HOME/.config/nvim/backup
/usr/bin/find $HOME/.config/nvim/swap -mmin +10080 -print0 | xargs -0 rm -rf && /bin/mkdir $HOME/.config/nvim/swap
# .DS_Store削除
# /usr/bin/find $HOME/Desktop -type f -iwholename "*ds_store*" -print0 | xargs -0 rm -rf
# /usr/bin/find $HOME/Downloads -type f -iwholename "*ds_store*" -print0 | xargs -0 rm -rf
# /usr/bin/find $HOME/workspace -type f -iwholename "*ds_store*" -print0 | xargs -0 rm -rf
# /usr/bin/find $HOME -maxdepth 1 -type f -iwholename "*ds_store*" -print0 | xargs -0 rm -rf

