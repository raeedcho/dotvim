let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <expr> <Plug>delimitMateS-BS delimitMate#WithinEmptyPair() ? "\<Del>" : "\<S-BS>"
inoremap <silent> <Plug>delimitMateBS =delimitMate#BS()
nnoremap  
nnoremap <NL> <NL>
nnoremap  
nnoremap  
nmap <silent>  w y <Plug>VimwikiMakeYesterdayDiaryNote
nmap <silent>  w t <Plug>VimwikiTabMakeDiaryNote
nmap <silent>  w w <Plug>VimwikiMakeDiaryNote
nmap <silent>  w i <Plug>VimwikiDiaryGenerateLinks
nmap <silent>  wi <Plug>VimwikiDiaryIndex
nmap <silent>  ws <Plug>VimwikiUISelect
nmap <silent>  wt <Plug>VimwikiTabIndex
nmap <silent>  ww <Plug>VimwikiIndex
nmap  hp <Plug>GitGutterPreviewHunk
nmap  hr <Plug>GitGutterUndoHunk:echomsg ' hr is deprecated. Use  hu'
nmap  hu <Plug>GitGutterUndoHunk
nmap  hs <Plug>GitGutterStageHunk
nmap  cc V <Plug>SendSelectionToTmux
vmap  c <Plug>SendSelectionToTmux
nnoremap  N :lprevious
nnoremap  n :lnext
nnoremap  g :Goyo
nnoremap    :nohlsearch
nnoremap  l :GitGutterLineHighlightsToggle
nnoremap  x :Explore
nnoremap  v :Vexplore
nnoremap  \ :Denite grep:. -mode=normal
nnoremap  * :DeniteCursorWord grep:. -mode=normal
nnoremap  / :Denite line:buffers
nnoremap  b :Denite buffer
nnoremap  o :Denite file_rec
noremap  p "+p
noremap  y "+y
noremap  d "+d
nnoremap  sv :source $MYVIMRC
nnoremap  ev :vsplit $MYVIMRC
nnoremap  ; :b#
nnoremap  t :TagbarToggle
nnoremap  u :GundoToggle
xmap S <Plug>VSurround
nmap [c <Plug>GitGutterPrevHunk
nmap ]c <Plug>GitGutterNextHunk
xmap ac <Plug>GitGutterTextObjectOuterVisual
omap ac <Plug>GitGutterTextObjectOuterPending
nmap cS <Plug>CSurround
nmap cs <Plug>Csurround
nmap ds <Plug>Dsurround
vmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
xmap gS <Plug>VgSurround
nnoremap gV `[v`]
xmap ic <Plug>GitGutterTextObjectInnerVisual
omap ic <Plug>GitGutterTextObjectInnerPending
vnoremap j gj
nnoremap j gj
vnoremap k gk
nnoremap k gk
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(expand((exists("g:netrw_gx")? g:netrw_gx : '<cfile>')),netrw#CheckIfRemote())
nnoremap <silent> <Plug>SurroundRepeat .
nnoremap <silent> <Plug>GitGutterPreviewHunk :GitGutterPreviewHunk
nnoremap <silent> <Plug>GitGutterUndoHunk :GitGutterUndoHunk
nnoremap <silent> <Plug>GitGutterStageHunk :GitGutterStageHunk
nnoremap <silent> <expr> <Plug>GitGutterPrevHunk &diff ? '[c' : ":\execute v:count1 . 'GitGutterPrevHunk'\"
nnoremap <silent> <expr> <Plug>GitGutterNextHunk &diff ? ']c' : ":\execute v:count1 . 'GitGutterNextHunk'\"
xnoremap <silent> <Plug>GitGutterTextObjectOuterVisual :call gitgutter#hunk#text_object(0)
xnoremap <silent> <Plug>GitGutterTextObjectInnerVisual :call gitgutter#hunk#text_object(1)
onoremap <silent> <Plug>GitGutterTextObjectOuterPending :call gitgutter#hunk#text_object(0)
onoremap <silent> <Plug>GitGutterTextObjectInnerPending :call gitgutter#hunk#text_object(1)
nnoremap <SNR>41_: :=v:count ? v:count : ''
nmap <silent> <Plug>NormalModeSendToTmux vip <Plug>SendSelectionToTmux
vnoremap <silent> <Plug>SendSelectionToTmux "ry :call Send_to_Tmux(@r)
xnoremap <silent> <Plug>(Limelight) :Limelight
nnoremap <silent> <Plug>(Limelight) :set opfunc=limelight#operatorg@
imap S <Plug>ISurround
imap s <Plug>Isurround
imap  <Plug>Isurround
inoremap  <Nop>
inoremap jk 
let &cpo=s:cpo_save
unlet s:cpo_save
set autowriteall
set background=dark
set backspace=indent,eol,start
set backupdir=~/.cache/vim/backup//
set directory=~/.cache/vim/swap//
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set formatlistpat=^\\s*\\%(\\(\\*\\|+\\|-\\)\\|\\(\\C\\%(\\d\\+\\.\\)\\)\\)\\s\\+\\%(\\[\\([\ .oOX]\\)\\]\\s\\)\\?
set helplang=en
set hidden
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set lazyredraw
set modelines=0
set path=.,/usr/include,,,**
set ruler
set runtimepath=~/.vim,~/.vim/bundle/Apprentice,~/.vim/bundle/delimitMate,~/.vim/bundle/denite.nvim,~/.vim/bundle/goyo.vim,~/.vim/bundle/gruvbox,~/.vim/bundle/gundo,~/.vim/bundle/limelight.vim,~/.vim/bundle/pathogen,~/.vim/bundle/railscasts-theme,~/.vim/bundle/syntastic,~/.vim/bundle/tagbar,~/.vim/bundle/tmuxline.vim,~/.vim/bundle/tslime.vim,~/.vim/bundle/vim-airline,~/.vim/bundle/vim-airline-themes,~/.vim/bundle/vim-fugitive,~/.vim/bundle/vim-gitgutter,~/.vim/bundle/vim-ledger,~/.vim/bundle/vim-repeat,~/.vim/bundle/vim-surround,~/.vim/bundle/vimwiki,/usr/share/vim/vimfiles,/usr/share/vim/vim81,/usr/share/vim/vimfiles/after,~/.vim/after
set shiftwidth=4
set showcmd
set showmatch
set smartcase
set splitbelow
set splitright
set suffixes=.bak,~,.o,.info,.swp,.aux,.bbl,.blg,.brf,.cb,.dvi,.idx,.ilg,.ind,.inx,.jpg,.log,.out,.png,.toc
set tabstop=4
set undodir=~/.vim/.undo
set undofile
set updatetime=100
set wildmenu
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +8 Wiki/index.md
badd +2 Wiki/ReviewTrigger.md
argglobal
silent! argdel *
$argadd Wiki/index.md
edit Wiki/ReviewTrigger.md
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 141 + 142) / 284)
exe 'vert 2resize ' . ((&columns * 142 + 142) / 284)
argglobal
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <S-BS> <Plug>delimitMateS-BS
imap <buffer> <BS> <Plug>delimitMateBS
inoremap <buffer> <silent> <S-CR> :VimwikiReturn 2 2
inoremap <buffer> <expr> <S-Tab> vimwiki#tbl#kbd_shift_tab()
nmap <buffer> <silent> 	 <Plug>VimwikiNextLink
vmap <buffer> <silent>  <Plug>VimwikiNormalizeLinkVisualCR
nmap <buffer> <silent>  <Plug>VimwikiFollowLink
nmap <buffer> <silent>  wr <Plug>VimwikiRenameLink
nmap <buffer> <silent>  wd <Plug>VimwikiDeleteLink
nmap <buffer>  whh <Plug>Vimwiki2HTMLBrowse
nmap <buffer>  wh <Plug>Vimwiki2HTML
vmap <buffer> <silent> + <Plug>VimwikiNormalizeLinkVisual
nmap <buffer> <silent> + <Plug>VimwikiNormalizeLink
nmap <buffer> <silent> - <Plug>VimwikiRemoveHeaderLevel
nmap <buffer> <silent> <D-CR> <Plug>VimwikiTabnewLink
nmap <buffer> <silent> = <Plug>VimwikiAddHeaderLevel
nnoremap <buffer> <silent> O :call vimwiki#lst#kbd_O()
vnoremap <buffer> <silent> al :call vimwiki#lst#TO_list_item(0, 1)
onoremap <buffer> <silent> al :call vimwiki#lst#TO_list_item(0, 0)
vnoremap <buffer> <silent> ac :call vimwiki#base#TO_table_col(0, 1)
onoremap <buffer> <silent> ac :call vimwiki#base#TO_table_col(0, 0)
vnoremap <buffer> <silent> a\ :call vimwiki#base#TO_table_cell(0, 1)
onoremap <buffer> <silent> a\ :call vimwiki#base#TO_table_cell(0, 0)
vnoremap <buffer> <silent> ah :call vimwiki#base#TO_header(0, 1)
onoremap <buffer> <silent> ah :call vimwiki#base#TO_header(0, 0)
nnoremap <buffer> gww :VimwikiTableAlignW
nnoremap <buffer> gqq :VimwikiTableAlignQ
noremap <buffer> <silent> gL1 :VimwikiChangeSymbolInListTo 1.
noremap <buffer> <silent> gl1 :VimwikiChangeSymbolTo 1.
noremap <buffer> <silent> gL- :VimwikiChangeSymbolInListTo -
noremap <buffer> <silent> gl- :VimwikiChangeSymbolTo -
noremap <buffer> <silent> gL+ :VimwikiChangeSymbolInListTo +
noremap <buffer> <silent> gl+ :VimwikiChangeSymbolTo +
noremap <buffer> <silent> gL* :VimwikiChangeSymbolInListTo *
noremap <buffer> <silent> gl* :VimwikiChangeSymbolTo *
map <buffer> <silent> gL  <Plug>VimwikiRemoveCBInList
map <buffer> <silent> gl  <Plug>VimwikiRemoveSingleCB
map <buffer> <silent> gLL <Plug>VimwikiIncreaseLvlWholeItem
map <buffer> <silent> gLl <Plug>VimwikiIncreaseLvlWholeItem
map <buffer> <silent> gLH <Plug>VimwikiDecreaseLvlWholeItem
map <buffer> <silent> gLh <Plug>VimwikiDecreaseLvlWholeItem
map <buffer> <silent> gll <Plug>VimwikiIncreaseLvlSingleItem
map <buffer> <silent> glh <Plug>VimwikiDecreaseLvlSingleItem
nmap <buffer> <silent> gLR <Plug>VimwikiRenumberAllLists
nmap <buffer> <silent> gLr <Plug>VimwikiRenumberAllLists
nmap <buffer> <silent> glr <Plug>VimwikiRenumberList
vnoremap <buffer> <silent> il :call vimwiki#lst#TO_list_item(1, 1)
onoremap <buffer> <silent> il :call vimwiki#lst#TO_list_item(1, 0)
vnoremap <buffer> <silent> ic :call vimwiki#base#TO_table_col(1, 1)
onoremap <buffer> <silent> ic :call vimwiki#base#TO_table_col(1, 0)
vnoremap <buffer> <silent> i\ :call vimwiki#base#TO_table_cell(1, 1)
onoremap <buffer> <silent> i\ :call vimwiki#base#TO_table_cell(1, 0)
vnoremap <buffer> <silent> ih :call vimwiki#base#TO_header(1, 1)
onoremap <buffer> <silent> ih :call vimwiki#base#TO_header(1, 0)
nnoremap <buffer> <silent> o :call vimwiki#lst#kbd_o()
nnoremap <buffer> <silent> <Plug>VimwikiRemoveHeaderLevel :call vimwiki#base#RemoveHeaderLevel()
nnoremap <buffer> <silent> <Plug>VimwikiAddHeaderLevel :call vimwiki#base#AddHeaderLevel()
nmap <buffer> <silent> <M-Right> <Plug>VimwikiTableMoveColumnRight
nmap <buffer> <silent> <M-Left> <Plug>VimwikiTableMoveColumnLeft
vmap <buffer> <silent> <Nul> <Plug>VimwikiToggleListItem
nmap <buffer> <silent> <Nul> <Plug>VimwikiToggleListItem
vmap <buffer> <silent> <C-Space> <Plug>VimwikiToggleListItem
nmap <buffer> <silent> <C-Space> <Plug>VimwikiToggleListItem
nmap <buffer> <silent> <C-Up> <Plug>VimwikiDiaryPrevDay
nmap <buffer> <silent> <C-Down> <Plug>VimwikiDiaryNextDay
nmap <buffer> <silent> <S-Tab> <Plug>VimwikiPrevLink
nmap <buffer> <silent> <BS> <Plug>VimwikiGoBackLink
nmap <buffer> <silent> <C-S-CR> <Plug>VimwikiTabnewLink
nmap <buffer> <silent> <C-CR> <Plug>VimwikiVSplitLink
nmap <buffer> <silent> <S-CR> <Plug>VimwikiSplitLink
imap <buffer> <silent>  <Plug>VimwikiDecreaseLvlSingleItem
imap <buffer> <silent> g <Plug>delimitMateJumpMany
imap <buffer>  <Plug>delimitMateBS
inoremap <buffer> <expr> 	 vimwiki#tbl#kbd_tab()
imap <buffer> <silent>  <Plug>VimwikiListToggle
imap <buffer> <silent>  <Plug>VimwikiListPrevSymbol
imap <buffer> <silent> <NL> <Plug>VimwikiListNextSymbol
inoremap <buffer> <silent>  :VimwikiReturn 1 5
imap <buffer> <silent>  <Plug>VimwikiIncreaseLvlSingleItem
imap <buffer> " <Plug>delimitMate"
imap <buffer> ' <Plug>delimitMate'
imap <buffer> ( <Plug>delimitMate(
imap <buffer> ) <Plug>delimitMate)
imap <buffer> [ <Plug>delimitMate[
imap <buffer> ] <Plug>delimitMate]
imap <buffer> ` <Plug>delimitMate`
imap <buffer> { <Plug>delimitMate{
imap <buffer> } <Plug>delimitMate}
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=
setlocal commentstring=%%%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
set conceallevel=2
setlocal conceallevel=2
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'vimwiki'
setlocal filetype=vimwiki
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
set foldnestmax=10
setlocal foldnestmax=10
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tqn
setlocal formatlistpat=^\\s*\\%(\\(\\*\\|+\\|-\\)\\|\\(\\C\\%(\\d\\+\\.\\)\\)\\)\\s\\+\\%(\\[\\([\ .oOX]\\)\\]\\s\\)\\?
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=Complete_wikifiles
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(1)
setlocal suffixesadd=.md
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'vimwiki'
setlocal syntax=vimwiki
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tags=./tags,./TAGS,tags,TAGS,~/Wiki/.tags
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 2 - ((1 * winheight(0) + 38) / 76)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2
normal! 0
wincmd w
argglobal
if bufexists('Wiki/index.md') | buffer Wiki/index.md | else | edit Wiki/index.md | endif
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <S-BS> <Plug>delimitMateS-BS
imap <buffer> <BS> <Plug>delimitMateBS
inoremap <buffer> <silent> <S-CR> :VimwikiReturn 2 2
inoremap <buffer> <expr> <S-Tab> vimwiki#tbl#kbd_shift_tab()
nmap <buffer> <silent> 	 <Plug>VimwikiNextLink
vmap <buffer> <silent>  <Plug>VimwikiNormalizeLinkVisualCR
nmap <buffer> <silent>  <Plug>VimwikiFollowLink
nmap <buffer> <silent>  wr <Plug>VimwikiRenameLink
nmap <buffer> <silent>  wd <Plug>VimwikiDeleteLink
nmap <buffer>  whh <Plug>Vimwiki2HTMLBrowse
nmap <buffer>  wh <Plug>Vimwiki2HTML
vmap <buffer> <silent> + <Plug>VimwikiNormalizeLinkVisual
nmap <buffer> <silent> + <Plug>VimwikiNormalizeLink
nmap <buffer> <silent> - <Plug>VimwikiRemoveHeaderLevel
nmap <buffer> <silent> <D-CR> <Plug>VimwikiTabnewLink
nmap <buffer> <silent> = <Plug>VimwikiAddHeaderLevel
nnoremap <buffer> <silent> O :call vimwiki#lst#kbd_O()
vnoremap <buffer> <silent> al :call vimwiki#lst#TO_list_item(0, 1)
onoremap <buffer> <silent> al :call vimwiki#lst#TO_list_item(0, 0)
vnoremap <buffer> <silent> ac :call vimwiki#base#TO_table_col(0, 1)
onoremap <buffer> <silent> ac :call vimwiki#base#TO_table_col(0, 0)
vnoremap <buffer> <silent> a\ :call vimwiki#base#TO_table_cell(0, 1)
onoremap <buffer> <silent> a\ :call vimwiki#base#TO_table_cell(0, 0)
vnoremap <buffer> <silent> ah :call vimwiki#base#TO_header(0, 1)
onoremap <buffer> <silent> ah :call vimwiki#base#TO_header(0, 0)
nnoremap <buffer> gww :VimwikiTableAlignW
nnoremap <buffer> gqq :VimwikiTableAlignQ
noremap <buffer> <silent> gL1 :VimwikiChangeSymbolInListTo 1.
noremap <buffer> <silent> gl1 :VimwikiChangeSymbolTo 1.
noremap <buffer> <silent> gL- :VimwikiChangeSymbolInListTo -
noremap <buffer> <silent> gl- :VimwikiChangeSymbolTo -
noremap <buffer> <silent> gL+ :VimwikiChangeSymbolInListTo +
noremap <buffer> <silent> gl+ :VimwikiChangeSymbolTo +
noremap <buffer> <silent> gL* :VimwikiChangeSymbolInListTo *
noremap <buffer> <silent> gl* :VimwikiChangeSymbolTo *
map <buffer> <silent> gL  <Plug>VimwikiRemoveCBInList
map <buffer> <silent> gl  <Plug>VimwikiRemoveSingleCB
map <buffer> <silent> gLL <Plug>VimwikiIncreaseLvlWholeItem
map <buffer> <silent> gLl <Plug>VimwikiIncreaseLvlWholeItem
map <buffer> <silent> gLH <Plug>VimwikiDecreaseLvlWholeItem
map <buffer> <silent> gLh <Plug>VimwikiDecreaseLvlWholeItem
map <buffer> <silent> gll <Plug>VimwikiIncreaseLvlSingleItem
map <buffer> <silent> glh <Plug>VimwikiDecreaseLvlSingleItem
nmap <buffer> <silent> gLR <Plug>VimwikiRenumberAllLists
nmap <buffer> <silent> gLr <Plug>VimwikiRenumberAllLists
nmap <buffer> <silent> glr <Plug>VimwikiRenumberList
vnoremap <buffer> <silent> il :call vimwiki#lst#TO_list_item(1, 1)
onoremap <buffer> <silent> il :call vimwiki#lst#TO_list_item(1, 0)
vnoremap <buffer> <silent> ic :call vimwiki#base#TO_table_col(1, 1)
onoremap <buffer> <silent> ic :call vimwiki#base#TO_table_col(1, 0)
vnoremap <buffer> <silent> i\ :call vimwiki#base#TO_table_cell(1, 1)
onoremap <buffer> <silent> i\ :call vimwiki#base#TO_table_cell(1, 0)
vnoremap <buffer> <silent> ih :call vimwiki#base#TO_header(1, 1)
onoremap <buffer> <silent> ih :call vimwiki#base#TO_header(1, 0)
nnoremap <buffer> <silent> o :call vimwiki#lst#kbd_o()
nnoremap <buffer> <silent> <Plug>VimwikiRemoveHeaderLevel :call vimwiki#base#RemoveHeaderLevel()
nnoremap <buffer> <silent> <Plug>VimwikiAddHeaderLevel :call vimwiki#base#AddHeaderLevel()
nmap <buffer> <silent> <M-Right> <Plug>VimwikiTableMoveColumnRight
nmap <buffer> <silent> <M-Left> <Plug>VimwikiTableMoveColumnLeft
vmap <buffer> <silent> <Nul> <Plug>VimwikiToggleListItem
nmap <buffer> <silent> <Nul> <Plug>VimwikiToggleListItem
vmap <buffer> <silent> <C-Space> <Plug>VimwikiToggleListItem
nmap <buffer> <silent> <C-Space> <Plug>VimwikiToggleListItem
nmap <buffer> <silent> <C-Up> <Plug>VimwikiDiaryPrevDay
nmap <buffer> <silent> <C-Down> <Plug>VimwikiDiaryNextDay
nmap <buffer> <silent> <S-Tab> <Plug>VimwikiPrevLink
nmap <buffer> <silent> <BS> <Plug>VimwikiGoBackLink
nmap <buffer> <silent> <C-S-CR> <Plug>VimwikiTabnewLink
nmap <buffer> <silent> <C-CR> <Plug>VimwikiVSplitLink
nmap <buffer> <silent> <S-CR> <Plug>VimwikiSplitLink
imap <buffer> <silent>  <Plug>VimwikiDecreaseLvlSingleItem
imap <buffer> <silent> g <Plug>delimitMateJumpMany
imap <buffer>  <Plug>delimitMateBS
inoremap <buffer> <expr> 	 vimwiki#tbl#kbd_tab()
imap <buffer> <silent>  <Plug>VimwikiListToggle
imap <buffer> <silent>  <Plug>VimwikiListPrevSymbol
imap <buffer> <silent> <NL> <Plug>VimwikiListNextSymbol
inoremap <buffer> <silent>  :VimwikiReturn 1 5
imap <buffer> <silent>  <Plug>VimwikiIncreaseLvlSingleItem
imap <buffer> " <Plug>delimitMate"
imap <buffer> ' <Plug>delimitMate'
imap <buffer> ( <Plug>delimitMate(
imap <buffer> ) <Plug>delimitMate)
imap <buffer> [ <Plug>delimitMate[
imap <buffer> ] <Plug>delimitMate]
imap <buffer> ` <Plug>delimitMate`
imap <buffer> { <Plug>delimitMate{
imap <buffer> } <Plug>delimitMate}
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=
setlocal commentstring=%%%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
set conceallevel=2
setlocal conceallevel=2
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'vimwiki'
setlocal filetype=vimwiki
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
set foldnestmax=10
setlocal foldnestmax=10
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tqn
setlocal formatlistpat=^\\s*\\%(\\(\\*\\|+\\|-\\)\\|\\(\\C\\%(\\d\\+\\.\\)\\)\\)\\s\\+\\%(\\[\\([\ .oOX]\\)\\]\\s\\)\\?
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=Complete_wikifiles
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(2)
setlocal suffixesadd=.md
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'vimwiki'
setlocal syntax=vimwiki
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tags=./tags,./TAGS,tags,TAGS,~/Wiki/.tags
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 38) / 76)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 141 + 142) / 284)
exe 'vert 2resize ' . ((&columns * 142 + 142) / 284)
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
set winminheight=1 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
