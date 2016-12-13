" --------------------------------------------------------------------------
"  General 
" --------------------------------------------------------------------------

set encoding=utf-8 " the encoding displayed.
set fileencoding=utf-8 " set fileencoding=utf-8 
syntax on " enable syntax highlight 

" --------------------------------------------------------------------------
"  Mappings 
" --------------------------------------------------------------------------

" dont user arrowkeys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>
" copy and paste to/from vim and the clipboard
nnoremap <C-y> +y
vnoremap <C-y> +y
nnoremap <C-p> +P
vnoremap <C-p> +P

" access system clipboard
set clipboard=unnamed
set number " line numbers
set laststatus=2 " show the status line all the time

" --------------------------------------------------------------------------
" Text Formatting 
" --------------------------------------------------------------------------

set expandtab " use spaces instead of tabs
set smarttab
set shiftwidth=4
set tabstop=4
set ai " auto indent
set si " smart indent 
set expandtab " use spaces instead of tabs

" --------------------------------------------------------------------------
" Colors / Theme
" --------------------------------------------------------------------------

" vim-airline
"let g:airline_powerline_fonts=1
"let g:airline_theme='bubblegum'
"let g:airline#extensions#tabline#enabled=1
"set guifont=Meslo\ LG\ S\ Regular\ for\ Powerline:h20
"hi Normal ctermbg=none " mantain terminal background
"set background=dark " background and theme
set nowrap " long lines as just one line (have to scroll horizontally)
"set t_Co=256 " 256 colors
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard'] " only show files that are not ignoreDTree
let NERDTreeShowHidden=1
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeQuitOnOpen=1 " close NERDTree after a file is opened

" --------------------------------------------------------------------------
"  Vundle 
" --------------------------------------------------------------------------

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" colorschemes
Plugin 'chriskempson/base16-vim'
" MOAR COLORSCHEMES
Plugin 'flazz/vim-colorschemes'
" vim-airline
Plugin 'bling/vim-airline'
" vim-airline-themes
Plugin 'vim-airline/vim-airline-themes'
" Ctrlp
Plugin 'kien/ctrlp.vim'
" NERDTree
Plugin 'scrooloose/nerdtree'
call vundle#end()           
filetype plugin indent on    


