" Setup stuff {{{
runtime bundle/pathogen/autoload/pathogen.vim

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" Execute pathogen stuff
execute pathogen#infect()
Helptags " Generate Helptags
" }}}

" Leader shortcuts {{{
let mapleader = "\<Space>"
let maplocalleader = ","
nnoremap <leader>u :GundoToggle<CR>


" remap escape to something easier
inoremap jk <ESC>
inoremap <ESC> <nop>

" More natural movement between buffers
" nnoremap <leader>j :bprevious<CR>
" nnoremap <leader>k :bnext<CR>
" nnoremap <leader>h :bfirst<CR>
" nnoremap <leader>l :blast<CR>
nnoremap <leader>; :b#<CR>

" Edit vimrc easily
nnoremap <leader>ev :edit $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

" Yank to system clipboard
noremap <leader>d "+d
noremap <leader>y "+y
noremap <leader>p "+p

" New line starting with date in parentheticals
nnoremap <leader>o o<C-R>=strftime("(%Y/%m/%d %H:%M)")<CR><Space>

" Allow changing between buffers with unsaved changes
set hidden

" Set no line wrapping by default
set nowrap

"  }}}

"  Tagbar {{{
nnoremap <leader>t :TagbarToggle<CR>
"  }}}

" Denite {{{
call denite#custom#map('insert', 'jk', '<denite:enter_mode:normal>',
    \'noremap')
call denite#custom#map('insert', '<Esc>', '<NOP>',
    \'noremap')
call denite#custom#map('normal', '<Esc>', '<NOP>',
    \'noremap')
" nnoremap <leader>o :<C-u>Denite -split=no file_rec<CR>
nnoremap <leader>ef :<C-u>Denite file_rec<CR>
" nnoremap <leader>b :<C-u>Denite -split=no -mode=normal buffer<CR>
nnoremap <leader>b :<C-u>Denite buffer<CR>
nnoremap <leader>/ :<C-u>Denite line:buffers<CR>
nnoremap <leader>* :<C-u>DeniteCursorWord grep:. -mode=normal<CR>
nnoremap <leader>\ :<C-u>Denite grep:. -mode=normal<CR>
" }}}

" Spellchecking {{{
" force reverse highlighting for spell check for all color schemes
augroup SpellReverseHighlight
    autocmd!
    autocmd ColorScheme * highlight SpellBad cterm=reverse
augroup END

nnoremap <leader>s :set spell!<CR>
" }}}

" Pandoc stuff {{{
" opt out for markdown
let g:pandoc#filetypes#pandoc_markdown = 0
let g:pandoc#filetypes#handled = ["pandoc"]
" spell checking
let g:pandoc#spell#enabled = 1
let g:pandoc#spell#default_langs = ["en_us"]
" execute :Pandoc on writes
let g:pandoc#command#autoexec_on_writes = 0
let g:pandoc#command#autoexec_command = "Pandoc pdf --filter pandoc-eqnos --filter pandoc-fignos"
" pandoc calls shortcuts
nnoremap <localleader>w :Pandoc pdf --filter pandoc-eqnos --filter pandoc-fignos<CR>
nnoremap <localleader>e :Pandoc docx --filter pandoc-eqnos --filter pandoc-fignos<CR>
" bibliography stuff...
let g:pandoc#biblio#bibs = ["~/Documents/LitLib/LitLibRaeed.bib"]
let g:pandoc#completion#bib#mode = 'citeproc'
"}}}

" Colors {{{
" colorscheme railscasts
" colorscheme ron
" colorscheme apprentice
let g:gruvbox_italic=1
let g:gruvbox_contrast_dark='hard'
let g:gruvbox_undercurl=1
colorscheme gruvbox
set background=dark
syntax enable " enable syntax processing

" use current background color (fixes background in tmux...)
set t_ut=

" }}}

" Spaces and tabs {{{
set tabstop=4 " number of visual spaces per tab
" set softtabstop=4 " number of spaces in tab when editing
set shiftwidth=4 " number of spaces inserted when indenting
set expandtab " tabs are spaces
" }}}

" UI Config {{{
set number relativenumber " set relative/absolute hybrid number in gutter
if has("autocmd")
    augroup number_toggle " set relative/absolute number automatic toggle
        autocmd!
        autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
        autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber
    augroup END
endif
set showcmd " show command in bottom bar
set cursorline " highlight current line
set lazyredraw " redraw only when we need to
set showmatch " highlight matching [{()}]
set ruler		" show the cursor position all the time
set backspace=indent,eol,start " allow backspacing over everything in insert mode
" set clipboard=unnamed " set default clipboard to system clipboard

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
  set guioptions-=m " no menu
  set guioptions-=r " no right scroll
  set guioptions-=L " no left scroll
endif " has("gui_running")

" More natural movement between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Open splits to right and bottom
set splitbelow
set splitright
"}}}

" Templates {{{
if has("autocmd")
    augroup templates
        autocmd BufNewFile *Notes.md 0r ~/.vim/templates/ProjTemplate.md
        autocmd BufNewFile *-notes.md 0r ~/.vim/templates/ProjTemplate.md
    augroup end
endif
" }}}

" Airline configuration {{{
set laststatus=2 " Always show airline bar
let g:airline_powerline_fonts = 1 " Use powerline symbols for airline
"let g:airline#extensions#tabline#enabled = 1 " display all buffers when there's only one tab open
let g:airline_theme='gruvbox'
" }}}

" NetRW struff {{{
"let g:netrw_liststyle = 3 " get a tree view
let g:netrw_banner = 0 " remove top banner
let g:netrw_winsize = 25 " set to 25% of width
" let g:netrw_browse_split = 4 " Open file in previous window
nnoremap <leader>v :Vexplore<CR>
nnoremap <leader>x :Explore<CR>
" }}}

" Gitgutter configuration {{{
set updatetime=100 " 100 ms update time
let g:gitgutter_highlight_lines = 0
nnoremap <leader>l :GitGutterLineHighlightsToggle<CR>
" }}}

" Searching {{{
set incsearch " search as characters are entered
set hlsearch " highlight matches
set ignorecase " ignore case
set smartcase " ignore case when all lower, but pay attention when some caps
nnoremap <leader><space> :nohlsearch<CR>

" Set add all subdirectories to path
set path +=**
set wildmenu
"}}}

" Folding {{{
set foldenable " enable folding
"set foldlevelstart=10 " open most folds by default
set foldnestmax=10 " 10 nested fold max
set foldmethod=manual
if has("autocmd")
    augroup vim_folding
        autocmd!
        autocmd BufReadPre ?* setlocal foldignore=
        autocmd BufReadPre ?* setlocal foldmethod=indent
        autocmd FileType vim setlocal foldmethod=marker
        autocmd FileType ledger setlocal foldmethod=marker
        "au BufWinEnter ?* if &fdm == 'indent' | setlocal foldmethod=manual | endif
        "au BufWritePost,BufLeave,WinLeave ?* mkview
        "au BufReadPre ?* silent loadview
    augroup END
endif
"}}}

" Movement {{{
" Move by screen line instead of buffer line
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

" visually select block of characters just inserted
nnoremap gV `[v`]
"}}}

" Backups {{{
if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
"  set backup		" keep a backup file (restore to previous version)
"  set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
"  set backupskip=/tmp/*,/private/tmp/*
"  set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
"  set writebackup
  set undofile		" keep an undo file (undo changes after closing)
  set undodir=~/.vim/.undo
endif
set history=50		" keep 50 lines of command line history
" }}}

" Vimwiki stuff {{{
let g:vimwiki_list = [{'path': '$HOME/Wiki', 'syntax': 'markdown', 'ext': '.md', 'auto_tags': 1}]
let g:vimwiki_dir_link = 'index' "automatically resolve folder links as folder/index.md
let g:vimwiki_hl_headers = 0 "highlight headers with different colors
let g:vimwiki_hl_cb_checked = 1 " highlight checked list lines
let g:vimwiki_global_ext = 0 " don't use vimwiki filetype for all .md files

" Link handling
function! VimwikiLinkHandler(link)
  " Use Vim to open external files with the 'vfile:' scheme.  E.g.:
  "   1) [[vfile:~/Code/PythonProject/abc123.py]]
  "   2) [[vfile:./|Wiki Home]]
  let link = a:link
  if link =~# '^vfile:'
    let link = link[1:]
  else
    return 0
  endif
  let link_infos = vimwiki#base#resolve_link(link)
  if link_infos.filename == ''
    echomsg 'Vimwiki Error: Unable to resolve link!'
    return 0
  else
    exe 'edit ' . fnameescape(link_infos.filename)
    return 1
  endif
endfunction
"}}}

" Ledger stuff {{{
let g:ledger_fillstring = '    -'
let g:ledger_detailed_first = 1
let g:ledger_fold_blanks = 0
let g:ledger_align_at = 62
let g:ledger_extra_options = '--pedantic --explicit --check-payees'
let g:ledger_default_commodity = '$'
let g:ledger_commodity_sep = ' '

if has("autocmd")
    augroup ledger_commands
        autocmd!
        autocmd FileType ledger inoremap <silent> <Tab> <C-r>=ledger#autocomplete_and_align()<CR>
        autocmd FileType ledger vnoremap <silent> <Tab> :LedgerAlign<CR>
    augroup END
endif
"}}}

" Goyo/Limelight stuff {{{
" colors for limelight
let g:limelight_conceal_ctermfg = 'DarkGray'
let g:limelight_conceal_guifg = 'DarkGray'

" beginning/end of paragraph setup
let g:limelight_bop = '^'
let g:limelight_eop = '\ze\n'

" leader shortcut
nnoremap <leader>g :Goyo<CR>

" autocommands for entering and exiting Goyo
function! s:goyo_enter()
    augroup number_toggle
        autocmd!
    augroup END
    Limelight
    set scrolloff=999
    set wrap
    set linebreak
    set norelativenumber
endfunction
function! s:goyo_leave()
    augroup number_toggle
        autocmd!
        autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
        autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber
    augroup END
    Limelight!
    set scrolloff=0
    set nowrap
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()
"}}}

" Syntastic stuff {{{
" Statusline (this is done by airline automatically)
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

let g:syntastic_matlab_mlint_exec = "/usr/local/MATLAB/R2021a/bin/glnxa64/mlint"
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" leader shortcuts
nnoremap <leader>n :lnext<CR>
nnoremap <leader>N :lprevious<CR>
"}}}

" TSlime stuff {{{
let g:tslime_always_current_session = 1
let g:tslime_always_current_window = 1
vmap <leader>c <Plug>SendSelectionToTmux
nmap <leader>cc V <Plug>SendSelectionToTmux
" }}}

" Set modelines to 0
set modelines=0
