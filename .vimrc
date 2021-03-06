syntax on
" 構文チェック
syntax enable
" エンコーディング
set encoding=UTF-8
set fileencoding=UTF-8
set termencoding=UTF-8

" スクロールする時に下が見えるようにする
set scrolloff=5
" .swapファイルを作らない
set noswapfile
" バックアップファイルを作らない
set nowritebackup
" バックアップをしない
set nobackup
" バックスペースで各種消せるようにする
set backspace=indent,eol,start
" ビープ音を消す
set vb t_vb=
set novisualbell
" OSのクリップボードを使う
set clipboard=unnamed,autoselect
" 不可視文字を表示
set list
" 右下に表示される行・列の番号を表示する
set ruler
" compatibleオプションをオフにする
set nocompatible
" 移動コマンドを使ったとき、行頭に移動しない
set nostartofline
" 対応括弧に<と>のペアを追加
set matchpairs& matchpairs+=<:>
" 対応括弧をハイライト表示する
set showmatch
" 対応括弧の表示秒数を3秒にする
set matchtime=3
" ウィンドウの幅より長い行は折り返され、次の行に続けて表示される
set wrap
" 入力されているテキストの最大幅を無効にする
set textwidth=0
" 不可視文字を表示
set listchars=tab:»-,trail:-,extends:»,precedes:«,nbsp:%,eol:↲
" インデントをshiftwidthの倍数に丸める
set shiftround
" 補完の際の大文字小文字の区別しない
set infercase
" 文字がない場所にもカーソルを移動できるようにする
" set virtualedit=all
" 変更中のファイルでも、保存しないで他のファイルを表示
set hidden
" 新しく開く代わりにすでに開いてあるバッファを開く
set switchbuf=useopen
" 小文字の検索でも大文字も見つかるようにする
set ignorecase
" ただし大文字も含めた検索の場合はその通りに検索する
set smartcase
" インクリメンタルサーチを行う
set incsearch
" 検索結果をハイライト表示
:set hlsearch
" タブ文字幅
set tabstop=2
" 自動インデントの幅
set shiftwidth=2
set softtabstop=0
" タブ入力を複数の空白入力に置き換え
set expandtab
" 行頭の余白内で Tab を打ち込むとshiftwidthの数だけインデントする
set smarttab
" autoindentと同様だがC構文を認識
set smartindent


" カラー設定
set t_Co=256
set background=dark
colorscheme solarized
let g:solarized_termcolors=256
let g:solarized_termtrans=1
set listchars=eol:¬,tab:▸\
" 行番号表示
set number
" タイトルをウィンドウ枠に表示
set title
set undolevels=300
" コマンド・検索パターンの履歴
set history=10000
" IME設定
set iminsert=0
set imsearch=0
set imdisable
" ステータスライン
set laststatus=2
" メッセージ表示欄
set cmdheight=2
" 置換の時 g オプションをデフォルトで有効にする
set gdefault
" カーソルが何行目の何列目に置かれているかを表示する
set ruler
" コマンドを画面下に表示させる
set showcmd
" タブ補完
set wildmenu
set wildmode=list:longest
" 最後尾まで検索を終えたら次の検索で先頭に移る
set wrapscan
" ペースト
set pastetoggle=<F12>
set clipboard=unnamed,unnamedplus,autoselect
" ESCキーが押されてからの待ち時間
set timeoutlen=300
" マウス対応
" set mouse=a
" set ttymouse=xterm2
" " コマンドを画面最下部に表示する
set showcmd

"save code, run python, ruby, php show output in preview window
function! Script_eval_vsplit() range
  let src = tempname()
  let dst = tempname()
  let lang = 'python'
  let ext = expand("%:e")
  if ext == 'py'
    let lang = 'python'
  elseif ext == 'rb'
    let lang = 'ruby'
  elseif ext == 'php'
    let lang = 'php'
  endif 
  execute ": " . a:firstline . "," . a:lastline . "w " . src
  execute ":silent ! ". lang . " " . src . " > " . dst . " 2>&1 "
  execute ":pclose!"
  execute ":redraw!"
  execute ":vsplit"
  execute "normal \<C-W>l"
  execute ":e! " . dst
  execute ":set pvw"
  execute "normal \<C-W>h"
endfunction
vmap <silent> <F7> :call Script_eval_vsplit()<CR>
nmap <silent> <F7> mzggVG<F7>`z
imap <silent> <F7> <Esc><F7>a
map <silent> <S-F7> <C-W>l:bw<CR>
imap <silent> <S-F7> <Esc><S-F7>a
"括弧とクォートの自動補完
"inoremap { {}<LEFT>
"inoremap [ []<LEFT>
"inoremap ( ()<LEFT>
"inoremap " ""<LEFT>
"inoremap ' ''<LEFT>
"vnoremap { "zdi^V{<C-R>z}<ESC>
"vnoremap [ "zdi^V[<C-R>z]<ESC>
"vnoremap ( "zdi^V(<C-R>z)<ESC>
"vnoremap " "zdi^V"<C-R>z^V"<ESC>
"vnoremap ' "zdi'<C-R>z'<ESC>
"挿入モードでのカーソル移動
noremap! <C-A> <Home>
noremap! <C-E> <End>
noremap! <C-F> <Right>
noremap! <C-B> <Left>
