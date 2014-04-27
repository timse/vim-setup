" default to UTF-8
set encoding=utf-8
" just to be sure
set nocompatible

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" add general stuff from awesome rc
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=700

" Set to auto read when a file is changed from the outside
set autoread

let mapleader = ","
let g:mapleader = ","

" Turn on the WiLd menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc

"Always show current position
set ruler

" Height of the command bar
set cmdheight=3

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=3

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500


" stop saving children
set shortmess+=I

" setup pathogen
let g:pathogen_disabled = []
call add(g:pathogen_disabled, 'vim-powerline')
execute pathogen#infect()
filetype plugin indent on

" configure vim-slime for tmux
let g:slime_target = "tmux"

" vim-airline powerline fonts
let g:airline_powerline_fonts = 1
let g:airline_theme = 'solarized'

" set solarized theme
syntax on
set background=dark
let g:solarized_termtrans=1
colorscheme solarized

" searching
set hlsearch

" line numbers
set number

" highlight the cursorline
set cursorline

" show tabs, line endings and trailing spaces
set listchars=tab:▸\ ,eol:¬,trail:␣,extends:⇉,precedes:⇇,nbsp:·
set list

" no linewrapping
set nowrap

" add scroll offset 
set so=15

" fancy powerline symbols
let g:Powerline_symbols='fancy'


" stop bugging me with unsaved buffers
set hidden

" expansion of the active file directory
cnoremap %% <C-R>=fnameescape(expand('%:h')).'/'<cr>

if has("autocmd")
  " Enable file type detection
  filetype on

  " Syntax of these languages is fussy over tabs Vs spaces
  autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
  autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType html setlocal ts=4 sts=4 sw=4 expandtab
  autocmd FileType css setlocal ts=4 sts=4 sw=4 expandtab
  autocmd FileType ruby setlocal ts=4 sts=4 sw=4 expandtab
  autocmd FileType javascript setlocal ts=4 sts=4 sw=4 expandtab
  autocmd FileType json setlocal ts=4 sts=4 sw=4 expandtab
  autocmd FileType coffee setlocal ts=4 sts=4 sw=4 expandtab
  autocmd FileType php setlocal ts=4 sts=4 sw=4 expandtab
  autocmd FileType cucumber setlocal ts=4 sts=4 sw=4 expandtab

  " Treat .rss files as XML
  autocmd BufNewFile,BufRead *.rss,*.atom setfiletype xml
  autocmd BufNewFile,BufRead *.pp,Puppetfile setfiletype ruby
endif

" configuration of vdebug
let g:vdebug_options = {}
let g:vdebug_options["debug_file"] = "~/.vdebug.log"
let g:vdebug_options["path_maps"] = {"/home/stange/webs/git": "/Users/hauke/Development/jimdo", "/vagrant": "/Users/hauke/code/shindig", "/var/www/jimdo/prod": "/Users/hauke/code/jimdo"}
let g:vdebug_options["server"] = '0.0.0.0'

" configuration of vim markdown
let g:vim_markdown_folding_disabled=1

" configuration of ack plugin
let g:ackprg="/usr/local/bin/ack -H --nocolor --nogroup --column"

" map FufBuffer
map <leader>f :FufBuffer<cr>

" map BufExplorer
map <leader>b :BufExplorer<cr>

" map NERDTreeToggle
map <leader>t :NERDTreeToggle<cr>


