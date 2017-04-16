" --------------------------------------------------------------------------
"  General 
" --------------------------------------------------------------------------

" the encoding displayed.
set encoding=utf-8 
set fileencoding=utf-8 
" enable syntax highlight 
syntax on 
" modify file instead of overwriting it 
set backupcopy=yes
" remove trailing whitespace 
autocmd BufWritePre *.js* :%s/\s\+$//e

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
set shiftwidth=2
set tabstop=2
set ai " auto indent
set si " smart indent 
set expandtab " use spaces instead of tabs

" --------------------------------------------------------------------------
" Colors / Theme
" --------------------------------------------------------------------------

" vim-airline
let g:airline_powerline_fonts=1
let g:airline_theme='luna'
let g:airline#extensions#tabline#enabled=1
set guifont=Meslo\ LG\ S\ Regular\ for\ Powerline:h20
set background=dark " background and theme
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
Plugin 'VundleVim/Vundle.vim' " let Vundle manage Vundle, required
Plugin 'chriskempson/base16-vim' " colorschemes
Plugin 'flazz/vim-colorschemes' " MOAR COLORSCHEMES
Plugin 'bling/vim-airline' " vim-airline
Plugin 'vim-airline/vim-airline-themes' " vim-airline-themes
Plugin 'pangloss/vim-javascript' " syntax highlight for js
Plugin 'mxw/vim-jsx' " syntax highlight for react jsx
Plugin 'scrooloose/syntastic' " syntastic
Plugin 'mtscout6/syntastic-local-eslint.vim' " syntastic use local eslint
Plugin 'scrooloose/nerdtree' " nerdtree 
call vundle#end()           
filetype plugin indent on    

" --------------------------------------------------------------------------
"  syntastic 
" --------------------------------------------------------------------------

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']

" --------------------------------------------------------------------------
"  auto-pairs 
" --------------------------------------------------------------------------

let g:AutoPairs = {'(':')', '[':']', '{':'}',"'":"'",'"':'"', '`':'`', '<':'>'} 
