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
" 構文毎に色をつける
syntax on
" コメントをわかりやすくダークグリーンにする
hi Comment ctermfg=DarkGreen
" insertモードの時に「jj」をESCにする
inoremap <silent> jj <ESC>

" Vimを開いた時にvim-plugを用意する
if has('vim_starting')
  set rtp+=~/.vim/autoload
  if !isdirectory(expand('~/.vim/autoload'))
    echo 'install vim-plug...'
    call system('mkdir -p ~/.vim/autoload/')
    call system('mkdir -p ~/.vim/plugged')
    call system('curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim')
  end
endif

if 1
  " vim-plugによるplugin管理
  " " 使い方
  " " :PlugInstall
  " " :PlugStatus
  call plug#begin('~/.vim/plugged')
    " vimでreactの環境を整える
    Plug 'pangloss/vim-javascript'
    Plug 'mxw/vim-jsx'
    " color schema
    Plug 'ciaranm/inkpot'
    " 行末のスペースを色付けする
    Plug 'bronson/vim-trailing-whitespace'
    " 入力補完機能を提供してくれる
    Plug 'Shougo/neocomplcache'
    " html閉じタグ
    Plug 'alvan/vim-closetag'
    Plug 'vim-scripts/gtags.vim'
    " editorconfig
    Plug 'editorconfig/editorconfig-vim'
  call plug#end()

  "" ■ colorschemeの設定
  if filereadable( $HOME . "/.vim/plugged/inkpot/colors/inkpot.vim")
    colorscheme inkpot
  endif
endif
