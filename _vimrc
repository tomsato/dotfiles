" encodingの設定
set encoding=utf-8
" クリップボードとVimの間を自由にコピペする
set clipboard=unnamed,autoselect
" 小文字のみで検索したときに大文字小文字を無視する
set smartcase
" 検索結果をハイライト表示する
set hlsearch
" タブ入力を複数の空白入力に置き換える
set expandtab
" 検索ワードの最初の文字を入力した時点で検索を開始する
set incsearch
" 行番号を表示する
set number
" 対応する括弧やブレースを表示する
set showmatch
" 改行時に前の行のインデントを継続する
set autoindent
" 改行時に入力された行の末尾に合わせて次の行のインデントを増減する
set smartindent
" タブ文字の表示幅
set tabstop=4
" カーソルを行頭、行末で止まらないようにする
set whichwrap=b,s,h,l,<,>,[,]
" pasteする時に自動で改行を入れない
autocmd InsertEnter * set paste
" 構文毎に色をつける
syntax on
" コメントをわかりやすくダークグリーンにする
hi Comment ctermfg=DarkGreen

