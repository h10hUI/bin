# 新macセットアップ方法(ver. OSX Yosemite)

## xcode のインストール

1. xcode のインストール（from appstore）
2. comandline ツールのインストール  
   `$ xcode-select --install`

## Homebrewのインストール

1. 下記コマンドを実行  
   `$ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
2. brew doctor で診断  
   `$ brew doctor`  
   *エラーが出たら対応*

## git のインストール

まずはgitをインストールする。  
`$ brew install git`

## Homebrew-file 関連

1. Homebrew-file のインストール  
   `$ brew tap rcmdnk/file`  
   `$ brew install brew-file`
2. brew file のリポジトリを連携  
   `$ brew file set_repo -r hi0711/brewfile`  
   `$ brew file edit`で編集できることを確認
3. 各アプリケーションのインストール  
   `$ brew file install`  
   *やったことないのでできるか不安*

上記githubとの連携がうまくいかないので、Googleドライブに移行  
* `admin@` のドライブにBrewfileを保存  
* `$export HOMEBREW_BREWFILE=~/Google\ ドライブ/Brewfile` でファイル指定  
* 各アプリケーションのインストール  
    `$brew file install`

## デフォルトの vim を変える

1. brew file で vim --with-lua がインストールされているはず
2. vim のバージョン確認  
   `$ brew list vim`
3. 既存 vim の置き換え  
   `$ sudo mv /usr/bin/vim /usr/bin/old_vim`     
   `$ sudo ln /usr/local/Celler/vim/[latest]/bin/vim /usr/bin`
4. 配置できたことの確認  
   `$ vim --version`

## NeoBundle の導入

1. .vim/ 内に bundle/ を作成  
   ` $ mkdir -p ~/.vim/bundle`
2. 作成したフォルダに neobundle.vim をクローンする  
   ` $ git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim`

## ログインシェルを zsh に設定

1. インストールされているシェルとパスの確認  
   ` $ cat /etc/shells`
2. シェルのパスを追加  
   ` $ vi /etc/shells`  
   *末尾に `/usr/local/bin/zsh` を追加する*
3. デフォルトのシェルを変更  
   `$ chsh -s /usr/local/bin/zsh`

## 各設定ファイルの反映

1. $HOME 直下に bin リポジトリをクローン  
   `$ git clone https://github.com/hi0711/bin`
2. 同じく dotfiles リポジトリ、plistFile リポジトリをクローン  
   `$ git clone https://github.com/hi0711/dotfiles`  
   `$ git clone https://github.com/hi0711/plistFile`
3. bin/ で下記コマンドを実行  
   `$ sh dotfileLinks.sh`

   他、細かい設定などは追って変更していく。
