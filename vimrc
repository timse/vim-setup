" just to be sure
set nocompatible

" stop saving children
set shortmess+=I

" setup pathogen
let g:pathogen_disabled = []
call add(g:pathogen_disabled, 'vim-powerline')
execute pathogen#infect()
filetype plugin indent on

" vim-airline powerline fonts
let g:airline_powerline_fonts = 1
let g:airline_theme = 'solarized'

" set solarized theme
syntax on
set background=dark
colorscheme solarized

" searching
set hlsearch

" line numbers
set number

" highlight the cursorline
set cursorline

" show tabs, line endings and trailing spaces
set listchars=tab:▸\ ,eol:¬,trail:␣,extends:⇉,precedes:⇇,nbsp:·
set list!

" no linewrapping
set nowrap

" fancy powerline symbols
let g:Powerline_symbols='fancy'

" default to UTF-8
set encoding=utf-8

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

  " Customisations based on house-style (arbitrary)
  autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType ruby setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType javascript setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType php setlocal ts=4 sts=4 sw=4 expandtab

  " Treat .rss files as XML
  autocmd BufNewFile,BufRead *.rss,*.atom setfiletype xml
  autocmd BufNewFile,BufRead *.pp,Puppetfile setfiletype ruby
endif

" configuration of vdebug
let g:vdebug_options = {}
let g:vdebug_options["debug_file"] = "~/.vdebug.log"
let g:vdebug_options["path_maps"] = {"/home/stange/webs/git": "/Users/hauke/Development/jimdo"}
let g:vdebug_options["server"] = '192.168.14.23'

" configuration of vim markdown
let g:vim_markdown_folding_disabled=1
