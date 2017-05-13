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
" set clipboard+=unnamed
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

let uname = system('uname -a')

if match(uname, 'MINGW64') == 0
  set rtp+=$HOME/vimfiles/bundle/Vundle.vim/
  call vundle#begin('$HOME/vimfiles/bundle/')
else
  set rtp+=~/.vim/bundle/Vundle.vim
  call vundle#begin()
endif

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
Plugin 'ervandew/supertab' " supetab
Plugin 'Valloric/YouCompleteMe' "auto completion 
Plugin 'SirVer/ultisnips' "snippets engine
Plugin 'honza/vim-snippets' "snippets manager
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


" --------------------------------------------------------------------------
" YouCompleteMe
" --------------------------------------------------------------------------
"
let g:ycm_filetype_blacklist = { 'tagbar' : 1, 'qf' : 1, 'notes' : 1, 'unite' : 1, 'text' : 1, 'vimwiki' : 1, 'pandoc' : 1, 'infolog' : 1, 'mail' : 1 }


" make YCM compatible with UltiSnips (using supertab)
" http://stackoverflow.com/questions/14896327/ultisnips-and-youcompleteme/22253548#22253548
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
