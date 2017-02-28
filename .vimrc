"-------------------------------------------------------------------------------
" ベース設定
"-------------------------------------------------------------------------------
scriptencoding utf-8                    " このファイルのエンコード
set nocompatible                        " vi互換しない

"-------------------------------------------------------------------------------
" 内部エンコーディング設定
"-------------------------------------------------------------------------------
set encoding=cp932                      " 内部エンコーディング

"-------------------------------------------------------------------------------
" エンコーディング、ファイルフォーマット設定
"-------------------------------------------------------------------------------
set fileencoding=cp932                  " 基本文字コード
set fileencodings=utf-8,iso-2022-jp,cp932,sjis,euc-jp " 文字コード自動判別(優先順)
set fileformat=unix                     " 基本ファイルフォーマット
set fileformats=unix,dos,mac            " ファイルフォーマット自動判別(優先順)

"-------------------------------------------------------------------------------
" システム設定
"-------------------------------------------------------------------------------
set nobackup                            " backupファイルを作らない
set writebackup                         " ファイルの上書きの前にbackupファイルを作る
                                        " nobackupの場合は、上書きに成功したら削除される
set backupdir=~/vimfiles/backup         " backupファイルディレクトリ
set swapfile                            " swapファイルを作る
set directory=~/vimfiles/swap           " swapファイルディレクトリ

set confirm                             " 保存されていないファイルがあるとき、終了前に保存確認
set hidden                              " 保存されていないファイルがあるときでも、保存しないで他のファイルを表示
set autoread                            " 外部でファイルに変更がされた場合は読みなおす
set browsedir=buffer                    " ファイル保存時の場所を、開いているファイルが有る場所に設定

set noerrorbells                        " エラー音抑止(gvimはgvimrcで指定)
set novisualbell                        " ビジュアルベル抑止(gvimはgvimrcで指定)
set visualbell t_vb=                    " ビープ音抑止(gvimはgvimrcで指定)

set history=100                         " コマンド、検索履歴数
set infercase                           " 補完の際の大文字小文字の区別しない
set wildmenu                            " ファイル名補完有効
set wildmode=list:longest,full          " 補完モード
  "補完モード
  " ""              最初のマッチのみを補完する。
  " "full"          次のマッチを完全に補完する。最後のマッチの次には元の文字列が使われ、その次は再び最初のマッチが補完される
  " "longest"       共通する最長の文字列までが補完される。それ以上長い文字列を補完できないときは、次の候補に移る
  " "longest:full"  "longest" と似ているが、'wildmenu' が有効ならばそれを開始する
  " "list"          複数のマッチがあるときは、全てのマッチを羅列する。
  " "list:full"     複数のマッチがあるときは、全てのマッチを羅列し、最初のマッチを補完する
  " "list:longest"  複数のマッチがあるときは、全てのマッチを羅列し、共通する最長の文字列までが補完される

set shellslash                          " Windowsで"/"を有効
set virtualedit+=block                  " 矩形選択でカーソル位置の制限を解除

"-------------------------------------------------------------------------------
" 表示設定
"-------------------------------------------------------------------------------
set number                              " 行番号の表示
set ruler                               " 右下に行・列の番号を表示
set title                               " タイトル表示
set list                                " 不可視文字を表示
set listchars=eol:\|,tab:>-,trail:-,extends:>,precedes:<,nbsp:%
                                        " 不可視文字の置き換え設定
set display=uhex                        " 表示できない文字を16進数で表示

set matchpairs& matchpairs+=<:>         " 対応括弧に<と>のペアを追加
set showmatch                           " 括弧の対応表示
set matchtime=1                         " 括弧の対応表示時間[1/10秒]

set laststatus=2                        " 常にステータスラインを表示
  "ステータスライン表示モード
  " "0"  一番下のウィンドウはステータスラインを表示しない
  " "1"  ウィンドウが1つの時はステータスラインを表示しない 2つ以上ある場合は、ステータスラインを表示する
  " "2"  常にステータスラインを表示する
set cmdheight=2                         " コマンドラインの高さ (gvimはgvimrcで指定)
set showcmd                             " 入力中のコマンドをステータスラインに表示

syntax on                               " シンタックスハイライト
set cursorline                          " カーソル行をハイライト
"set cursorcolumn                       " カーソル位置のカラムのハイライト
set colorcolumn=80                      " 80行目に色を付ける
colorscheme evening                     " カラースキーマ(gvimはgvimrcで指定)

set scrolloff=5                         " 上下5行の視界を確保
set sidescrolloff=16                    " 左右スクロール時の視界を確保
set sidescroll=1                        " 左右スクロールは一文字づつ行う
set backspace=indent,eol,start          " バックスペースでインデントや改行を削除可能
set whichwrap=b,s,h,l,<,>,[,]           " 左右移動で行跨ぎ可能

set nowrap                              " 折り返さない
set textwidth=0                         " テキストの最大幅を無効にする

set ambiwidth=double                    " 全角記号（○、□等）の位置ズレ対応

"-------------------------------------------------------------------------------
" 検索/置換設定
"-------------------------------------------------------------------------------
set ignorecase                          " 大/小文字無視
set smartcase                           " ただし大文字を含む検索の場合は大/小文字有効
set incsearch                           " インクリメンタルサーチ有効
set hlsearch                            " 検索結果ハイライト表示
set wrapscan                            " 検索をファイルの先頭へループする
set gdefault                            " 置換の時 g オプションをデフォルトで有効

"-------------------------------------------------------------------------------
" 編集設定
"-------------------------------------------------------------------------------
set clipboard=unnamed,autoselect        " OSクリップボード使用、選択時自動コピー

set tabstop=2                           " タブ幅
set softtabstop=2                       " タブ幅（編集時）
set shiftwidth=2                        " インデント幅

set smarttab                            " 行頭の<Tab>は"shiftwidth"、それ以外は"tabstop"
set shiftround                          " インデントをshiftwidthの倍数に丸める
set expandtab                           " タブの代わりにスペース
set autoindent                          " 前行に合わせてインデント
set smartindent                         " 前行の末尾に合わせてインデントを増減

