syntax enable
set nocompatible              " be iMproved, required
filetype off                  " required
set laststatus=2
set magic
"set ru "标尺信息
set ai "自动缩进
set sw=4 "自动缩进宽度
set ts=4
"set nonu
set dy=lastline "显示最多行，不用@@
set autoindent
set smartindent
""set background=dark
""colorscheme monokai
""let g:solarized_termcolors=256
"" Vim UI {

if filereadable(expand("~/.vim/colors/solarized.vim"))
        let g:solarized_termcolors=256
        let g:solarized_termtrans=1
        let g:solarized_contrast="normal"
        let g:solarized_visibility="normal"
        color solarized             " Load a colorscheme
 endif
 set tabpagemax=15  "only show 15 tabs
 set showmode       "Display current mode
 set cursorline     "Highlight current line"
 highlight clear SignColumn "SignColumn show match background
 highlight clear LineNr    "Current line number row will have the me back ground number in relative mode
 ""highlight clear CursorLineNr " remove highlight color from current line number

if has('statusline')
    set laststatus=2
    set statusline=%<%f\                     " Filename
    set statusline+=%w%h%m%r                 " Options
    set statusline+=%{fugitive#statusline()} " Git Hotness
    set statusline+=\ [%{&ff}/%Y]            " Filetype
    set statusline+=\ [%{getcwd()}]          " Current dir
    set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
endif

set backspace=indent,eol,start
set linespace=0 "No extra spaces between rows
set nu          "Line numbers on
set showmatch  " Show matching brackets/parenthesis
set incsearch  " Find as you type search 
set hlsearch   " Highlight search terms
set ignorecase " Case insensitive search
set smartcase  " Case sensitive when uc present
set wildmenu   " Show list instead of just completing 
set wildmode=list:longest,full " Command<Tab> completion,list matches, then longest common part, then all
set whichwrap=b,s,h,l,<,>,[,]  " Backspace cursor keys wrap too
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:. " Highlight problematic whitespace
set scrolljump=5  "Lines to scroll when cursor leaves screen
set scrolloff=3   "Minimum lines to keep above and below cursor
"}


" Formatting {
set nowrap   " Do not wrap long lines"
set shiftwidth=4 "Use indents of 4 spaces"
set expandtab    "Tabs are spaces,not tabs"
set softtabstop=4 "Let backspace delete indent"
set nojoinspaces  "prevents iseting two spaces after puctuation on a join"

"IMPORTANT: grep will sometimes skip displaying the file name if you
" " search in a singe file. This will confuse Latex-Suite. Set your grep
" " program to always generate a file-name.
 set grepprg=grep\ -nH\ $*"

 let g:tex_flavor = 'latex'

" indent_guides {
         let g:indent_guides_start_level = 2
         let g:indent_guides_guide_size = 1
         let g:indent_guides_enable_on_vim_startup = 1
" }
" vim air-lines{
""if !exists('g:airline_theme')
""	let g:airline_theme='solarized'
""endif
if isdirectory(expand("~/.vim/bundle/vim-airline/"))
    if !exists('g:airline_theme')
        let g:airline_theme = 'solarized'
    endif
    if !exists('g:airline_powerline_fonts')
        let g:airline_left_sep='›'
        let g:airline_right_sep='‹'
    endif
endif
"}

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'Lokaltog/vim-easymotion'

Plugin 'scrooloose/nerdtree'

Plugin 'kien/ctrlp.vim'

Plugin 'Shougo/neocomplcache.vim'

Plugin 'myusuf3/numbers.vim'

Plugin 'scrooloose/syntastic'

Plugin 'LaTeX-Suite-aka-Vim-LaTeX'

Plugin 'godlygeek/tabular'

Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html

Plugin 'tpope/vim-surround'

Plugin 'nathanaelkane/vim-indent-guides'

Plugin 'terryma/vim-multiple-cursors'

Plugin 'sickill/vim-monokai'

Plugin 'mileszs/ack.vim'

Plugin 'msanders/snipmate.vim'

Plugin 'bling/vim-airline'

Plugin 'bling/vim-bufferline'

Plugin 'spf13/vim-autoclose'

Plugin 'scrooloose/nerdcommenter'

Plugin 'Valloric/YouCompleteMe'
"PHP {
    Plugin 'spf13/PIV'
    Plugin 'arnaud-lb/vim-php-namespace'
"}

"Python{
    Plugin 'klen/python-mode'
    Plugin 'python.vim'
    Plugin 'python_match.vim'
    Plugin 'pythoncomplete'
"}

"Javascript{
    Plugin 'elzr/vim-json'
    Plugin 'groenewege/vim-less'
    Plugin 'pangloss/vim-javascript'
    Plugin 'briancollins/vim-jst'
    Plugin 'kchmck/vim-coffee-script'
"}

"Scala{
    Plugin 'derekwyatt/vim-scala'
    Plugin 'derekwyatt/vim-sbt'
"}

"Haskell{
    Plugin 'travitch/hasksyn'
    Plugin 'dag/vim2hs'
    Plugin 'Twinside/vim-haskellConceal'
    Plugin 'Twinside/vim-haskellFold'
    Plugin 'lukerandall/haskellmode-vim'
    Plugin 'eagletmt/neco-ghc'
    Plugin 'eagletmt/ghcmod-vim'
    Plugin 'Shougo/vimproc'
    Plugin 'adinapoli/cumino'
    Plugin 'bitc/vim-hdevtools'
"}

"HTML{
    Plugin 'amirh/HTML-AutoCloseTag'
    Plugin 'hail2u/vim-css3-syntax'
    Plugin 'gorodinskiy/vim-coloresque'
    Plugin 'tpope/vim-haml'
"}
"Misc{
    Plugin 'tpope/vim-markdown'
    Plugin 'spf13/vim-preview'
    Plugin 'tpope/vim-cucumber'
    Plugin 'quentindecock/vim-cucumber-align-pipes'
    Plugin 'Puppet-Syntax-Highlighting'
"}

Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
Plugin 'user/L9', {'name': 'newL9'}
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
