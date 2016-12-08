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

" vim-plugによるplugin管理
" 使い方
" :PlugInstall
" :PlugStatus
call plug#begin('~/.vim/plugged')
    " color schema
    Plug 'ciaranm/inkpot'
    " 行末のスペースを色付けする
    Plug 'bronson/vim-trailing-whitespace'
    " html閉じタグを自動挿入する
    Plug 'alvan/vim-closetag'
call plug#end()
 
"" 以下pluginの設定
" ■ colorschemeの設定
if filereadable(expand("~/.vim/plugged/inkpot/colors/inkpot.vim"))
      colorscheme inkpot
endif
