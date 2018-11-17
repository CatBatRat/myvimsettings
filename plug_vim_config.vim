
"-Load-Plugins-Using-PlugVim----------------------------------------------

call plug#begin('~/.vim/plugged')

" Status line improvements and tools
Plug 'bling/vim-airline'
" Common default settings to make VIM a little nicer to use
Plug 'tpope/vim-sensible'
" Comment manager for various languages
Plug 'tpope/vim-commentary'
" Tag, quote, parens, etc. manager.
Plug 'tpope/vim-surround'
" Code completion and management for LaTeX files
Plug 'lervag/vimtex'
" Code completion using the python completion engine
Plug 'davidhalter/jedi-vim'
" File browser
Plug 'scrooloose/nerdtree'
" Syntax Checking
Plug 'vim-syntastic/syntastic'
" Color adjustment for many types of terminals
Plug 'godlygeek/csapprox'
" Multiple Cursors
Plug 'terryma/vim-multiple-cursors'
" Rainbow parenthesis
Plug 'luochen1990/rainbow'
" Cursor changing depending on edit mode
Plug 'jszakmeister/vim-togglecursor'
" Auto closing pairs
Plug 'jiangmiao/auto-pairs'
" Indent Line - indent visualizer
Plug 'yggdroot/indentline'
" Indent guides
" Plug 'nathanaelkane/vim-indent-guides'
" Better white space display
Plug 'ntpeters/vim-better-whitespace'
" Non blocking compiling for various file types
Plug 'tpope/vim-dispatch'
" CtrlP fuzzy search in vim
Plug 'ctrlpvim/ctrlp.vim'
" Completions triggered by the "Tab" key
Plug 'ervandew/supertab'

Plug 'Alvarocz/vim-fresh'

call plug#end()


"=Plug=Configuration======================================================

" Map NERDTreeToggle to the F2 key
map <F2> :NERDTreeToggle<CR>
let NERDTreeShowBookmarks=1

" Set indent guides

" let g:indent_guides_enable_on_vim_startup = 1

