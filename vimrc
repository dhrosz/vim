filetype off                  " required

" set the runtime path to include Vundle and initialize
set runtimepath+=~/.vim
set rtp+=/home/fireballs/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Provides the vertical indentation lines.
Plugin 'Yggdroot/indentLine'

" Advanced completion.
Plugin 'shawncplus/phpcomplete.vim'

"Syntax highlighting
Plugin 'vim-syntastic/syntastic'

" Test Debugger
Plugin 'joonty/vdebug'

" NerdTree
Plugin 'scrooloose/nerdtree'

" Autocompletion
Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
set shiftwidth=2
set nu
set tabstop=2
set expandtab
set smartindent
set winheight=40
set winwidth=50
set mouse=n
set autochdir
set guifont=Menlo\ Bold\ 8
syntax on


"Color settings
color holokai

"Highlight text that is over 80 characters
highlight OverLength ctermbg=white ctermfg=red guibg=#592929
highlight Comment ctermfg=Magenta
highlight string ctermfg=green
match OverLength /\%81v.\+/

autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP

"let g:dbgPavimOnce = 1
"let g:dbgPavimKeyRun = '<S-TAB>'


let g:vdebug_options = {
      \"watch_window_style" : "compact",
      \"break_on_open" : 0,
      \"continuous_mode" : 1,
\}
let g:dbgPavimPort = 9008

" Map NERDTree to Shift + Tab.
map <S-TAB> :NERDTreeToggle<CR>

set tags=/var/www/html/rotary_org/tags
set guioptions -=m
set guioptions -=T
"set lines=N columns=N
set guifont=courier\ bold\ 11
