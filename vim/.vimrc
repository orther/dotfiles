"-------------------------------------------------------------------------------
" Vim
"-------------------------------------------------------------------------------

set nocompatible " be iMproved
filetype off     " required!

"-------------------------------------------------------------------------------
" Vundle Setup & Load
"-------------------------------------------------------------------------------

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

"-------------------------------------------------------------------------------
" Bundles
"-------------------------------------------------------------------------------

" color schemes
Bundle 'chriskempson/base16-vim'

" navigation/movement
Bundle 'Lokaltog/vim-easymotion'

" tab/auto complete
Bundle 'ervandew/supertab'
" original repos on github
"Bundle 'tpope/vim-fugitive'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"Bundle 'tpope/vim-rails.git'
" vim-scripts repos
"Bundle 'L9'
"Bundle 'FuzzyFinder'
" non github repos
"Bundle 'git://git.wincent.com/command-t.git'
" ...

filetype plugin indent on     " required!

"-------------------------------------------------------------------------------
" Color Scheme & Syntax Highlighting 
"-------------------------------------------------------------------------------

set background=dark
colorscheme base16-tomorrow
syntax on

"-------------------------------------------------------------------------------
" Customizations
"-------------------------------------------------------------------------------

" disable arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" navigate splits with the arrow keys
nnoremap <Right> <C-w>l
nnoremap <Left> <C-w>h
nnoremap <Up> <C-w>k
nnoremap <Down> <C-w>j

" retain visual selection when shifting text in visual mode
vmap < <gv
vmap > >gv

"-------------------------------------------------------------------------------
" Bundle Configs
"-------------------------------------------------------------------------------

" EasyMotion
let g:EasyMotion_leader_key = '<Leader>' 
