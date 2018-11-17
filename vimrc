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
" Git wrapper for interacting with git from VIM
Plug 'tpope/vim-fugitive'
" Use fzf in vim for various functions
Plug 'junegunn/fzf'
" Code completion and management for LaTeX files
Plug 'lervag/vimtex'
" Programmable snippets with form file and completions
Plug 'sirver/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'
" Code completion using the python completion engine
Plug 'davidhalter/jedi-vim'
" File browser
Plug 'scrooloose/nerdtree'
" Syntax highlighting c++
Plug 'octol/vim-cpp-enhanced-highlight'
" Syntax Checking
Plug 'vim-syntastic/syntastic'
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
" Better white space display
Plug 'ntpeters/vim-better-whitespace'
" Non blocking compiling for various file types
Plug 'tpope/vim-dispatch'
" Fish syntax
Plug 'dag/vim-fish'
" CSApproxby Matt Wozniski
Plug 'godlygeek/csapprox'

call plug#end()


"=Plug=Configuration======================================================

" Map NERDTreeToggle to the F2 key
map <F2> :NERDTreeToggle<CR>
let NERDTreeShowBookmarks=1
let NERDTreeShowHidden=1

let $FZF_DEFAULT_COMMAND='find .'

map <F3> :FZF ~/<CR>
map <C-P> :FZF ./<CR>

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetDirectories = ['.vim/UltiSnips', 'UltiSnips']

"-Vim-Configuration-------------------------------------------------------

" Enable auto completions
set omnifunc=syntaxcomplete#Complete

" Allow setting vim configs at the beginning of files
set modeline modelines=5

set undofile undodir=~/.vim/undofiles/

" Set color scheme
color slate

" Change some visual options
set ignorecase relativenumber hlsearch showcmd showmode

" Mouse use and break on word
set mouse=a linebreak

" Set some nice options for <tab>
set softtabstop=4 shiftwidth=4 expandtab

" Set font for the gui
" set guifont=Source\ Code\ Pro\ Semibold\ 11

" Settings for txt files
autocmd FileType markdown setlocal textwidth=74
autocmd FileType markdown inoremap <leader>`` &ldquo;
autocmd FileType markdown inoremap <leader>'' &rdquo;

noremap <leader>p :w<cr>:silent !pandoc -S '%' -f markdown -t html5 -o '%:r.html'<cr>

nmap <M-up> dd<up>P
nmap <M-down> ddp

" Highlight the current line the cursor is on.
"set cursorline

" Set shortcut to open .vimrc
map <F10> :sp<cr>:e ~/.vimrc<cr>

map <F4> :cd %:h<CR>

" Window navigation using Ctrl and the standard movement keys.
nnoremap <C-k> :wincmd k<cr>:wincmd =<cr>
nnoremap <C-j> :wincmd j<cr>:wincmd =<cr>
nnoremap <C-h> :wincmd h<cr>:wincmd =<cr>
nnoremap <C-l> :wincmd l<cr>:wincmd =<cr>

" Select all
noremap <leader>a mcggVG

" Select all and copy to system clipboard.
nmap <leader>ac mcggVG"+y'c
