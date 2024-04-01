#!/bin/bash -ex

# ダウンロードフォルダ1日以上前削除
/usr/bin/find $HOME/Downloads/* -mmin +1440 -print0 | xargs -0 -J% mv % $HOME/.Trash
# デスクトップフォルダ1日以上前削除
/usr/bin/find $HOME/Desktop/* -mmin +1440 -print0 | xargs -0 -J% mv % $HOME/.Trash
# スクリーンショット90分以上前削除
/usr/bin/find $HOME/Desktop -name "スクリーンショット*" -mmin +90 -print0 | xargs -0 rm -rf
# vimの不要ファイル削除
/usr/bin/find $HOME/.config/nvim/undo -mmin +10080 -print0 | xargs -0 rm -rf && /bin/mkdir -p $HOME/.config/nvim/undo
/usr/bin/find $HOME/.config/nvim/backup -mmin +10080 -print0 | xargs -0 rm -rf && /bin/mkdir -p $HOME/.config/nvim/backup
/usr/bin/find $HOME/.config/nvim/swap -mmin +10080 -print0 | xargs -0 rm -rf && /bin/mkdir -p $HOME/.config/nvim/swap
