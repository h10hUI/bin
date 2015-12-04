#!/bin/bash
# ファイル名の空白を"_"に変更
find $HOME/Desktop/* -name "* *" | rename 's/ /_/g' *
find $HOME/Downloads/* -name "* *" | rename 's/ /_/g' *
