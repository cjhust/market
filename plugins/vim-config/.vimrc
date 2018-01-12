set nocompatible              " be iMproved, required
filetype off                  " required

"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
filetype plugin indent on    " required

let g:pydiction_location = '/root/.vim/bundle/pydiction/complete-dict'

"let g:EasyMotion_leader_key = '<Leader>'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

set nocompatible    " use vim defaults
set expandtab       " expand tab to space
set backspace=2     " backspace width
set tabstop=2       " numbers of spaces of tab character
set shiftwidth=2    " numbers of spaces to (auto)indent
set scrolloff=3     " keep 3 lines when scrolling
"set textwidth=80    " line width

set makeprg=scons
set showcmd         " display incomplete commands
set hlsearch        " highlight searches
set incsearch       " do incremental searching
set ruler           " show the cursor position all the time
set visualbell t_vb=    " turn off error beep/flash
set novisualbell    " turn off visual bell
set nobackup        " do not keep a backup file
set noignorecase   " don't ignore case
set title           " show title in console title bar
set ttyfast         " smoother changes
set modeline        " last lines in document sets vim mode
set modelines=3     " number lines checked for modelines
set shortmess=atI   " Abbreviate messages
set nostartofline   " don't jump to first character when paging
"set cursorline
"hi cursorline     guibg=#363636
"hi CursorLine cterm=NONE ctermbg=darkgray 

set autoindent     " always set autoindenting on
set smartindent        " smart indent
set cindent            " cindent
set nu                 " line number
set nocp
set completeopt=menuone,longest

filetype plugin on
syntax on           " syntax highlighing

" plugin variable
let g:Tlist_Use_Right_Window = 1
" let g:Tlist_Auto_Open = 1
let g:Tlist_Auto_Update = 1
let g:Tlist_Show_One_File = 1
let g:treeExplVertical = 1
let g:Tlist_WinWidth = 30
let g:DoxygenToolkit_authorName="ZhangYoudong"

" remap hjkl normal
nmap J j
nmap K k
nmap H h
nmap L l

" remap hjkl visual
vmap J j
vmap K k
vmap H h
vmap L l


map <F5> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
map <F10> :!ctags -R . <CR>

" shortcut for set nu
nmap <F12> :set nu!<CR>

" NERDTree shortcut 
" nmap nt :NERDTree<CR>       
" nmap nc :NERDTreeClose<CR>        
nmap ,d :NERDTree<CR>       
nmap ,c :NERDTreeClose<CR>        
let NERDTreeWinSize=20
let NERDTreeIgnore=['\.o$', '\~$']

" DoxgenTookit shortcut
nmap dx :Dox<CR>
nmap da :DoxAut<CR>
nmap dl :DoxLic<CR>

" open taglist toggle
nmap <F4> :TlistToggle<CR>
nmap tl   :TlistToggle<CR>

" short cut for VTreeExplore
nmap ve :VTreeExplore<CR>

nmap <C-N> :tabnext<CR>
nmap <C-P> :tabprevious<CR>

" insert mode shortcut
" inoremap <C-h> <Left>
" inoremap <C-j> <Down>
" inoremap <C-k> <Up>
" inoremap <C-l> <Right>
" inoremap <C-d> <DELETE>

" set file encodings
set fileencodings=utf-8,cp936,gb18036,big5
set encoding=utf-8

" :colorscheme evening
" :colorscheme murphy 

" salorised
set background=dark
":colorscheme solarized
":colorscheme monokai
":colorscheme desert

" staus line
set ls=2            " allways show status line

" remove trailing space
"autocmd BufWrite *.[ch],*.hpp,*.cpp,*.py,*.java exec ":cal RemoveSpace()" 

au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif"'")"'")"'")

func RemoveSpace()
  execute "normal mz"
	  %s/ *$//g
		  execute "normal 'z"
			endfunc

