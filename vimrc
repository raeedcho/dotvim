" Setup stuff {{{
runtime bundle/pathogen/autoload/pathogen.vim

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" Execute pathogen stuff
execute pathogen#infect()
" }}}
" Colors {{{
" colorscheme railscasts
colorscheme ron
syntax enable " enable syntax processing
" }}}
" Spaces and tabs {{{
set tabstop=4 " number of visual spaces per tab
set softtabstop=4 " number of spaces in tab when editing
set expandtab " tabs are spaces
" }}}
" UI Config {{{
set relativenumber " set relative number in gutter
set number " set line number for current line in gutter
set showcmd " show command in bottom bar
set cursorline " highlight current line
set lazyredraw " redraw only when we need to
set showmatch " highlight matching [{()}]
set ruler		" show the cursor position all the time
set backspace=indent,eol,start " allow backspacing over everything in insert mode

" Only do this part when compiled with support for autocommands.
if has("autocmd")
  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on
  filetype plugin on
else
  set autoindent		" always set autoindenting on
endif " has("autocmd")

" Set font in GUI
if has("gui_running")
  set guifont=Consolas:h11:cANSI
  set guioptions-=T " no toolbar
endif " has("gui_running")
"}}}
" Airline configuration {{{
set laststatus=2 " Always show airline bar
let g:airline_powerline_fonts = 1 " Use powerline symbols for airline
" }}}
" Searching {{{
set incsearch " search as characters are entered
set hlsearch " highlight matches
set ignorecase " ignore case
set smartcase " ignore case when all lower, but pay attention when some caps
nnoremap <leader><space> :nohlsearch<CR>
"}}}
" Folding {{{
set foldenable " enable folding
set foldlevelstart=10 " open most folds by default
set foldnestmax=10 " 10 nested fold max
set foldmethod=indent " fold based on indent level (default was manual)
if has("autocmd")
    augroup vim_folding
        autocmd!
        au BufReadPre  ?* setlocal foldmethod=indent
        au BufWinEnter ?* if &fdm == 'indent' | setlocal foldmethod=manual | endif
        "au BufWritePost,BufLeave,WinLeave ?* mkview
        "au BufReadPre ?* silent loadview
    augroup END
endif
"}}}
" Movement {{{
nnoremap gV `[v`] " visually select block of characters just inserted
"}}}
" Leader shortcuts {{{
let mapleader = "\<Space>"
nnoremap <leader>u :GundoToggle<CR>
"}}}
" Backups {{{
if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file (restore to previous version)
"  set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
"  set backupskip=/tmp/*,/private/tmp/*
"  set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
"  set writebackup
  set undofile		" keep an undo file (undo changes after closing)
endif
set history=50		" keep 50 lines of command line history
" }}}
" Vimwiki stuff {{{
let g:vimwiki_list = [{'path': '$HOME/Dropbox/wiki', 'syntax': 'markdown', 'ext': '.md}]
let g:vimwiki_dir_link = 'index' "automatically resolve folder links as folder/index.wiki
"let g:vimwiki_hl_headers = 1 "highlight headers with different colors
"}}}
" Set modelines to 0
set modelines=0
