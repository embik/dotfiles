syntax enable

" Tabs and indention
set sw=4
set tabstop=4
set softtabstop=4
set expandtab
filetype indent on

au FileType html setl sw=2 sts=2

filetype plugin indent on
set omnifunc=syntaxcomplete#Complete

set number
set showcmd

set wildmenu

set showmatch

set incsearch
set hlsearch

set foldenable

set laststatus=0
set shell=/bin/zsh

"set conceallevel=0

" Import plugins via vim-plug
call plug#begin()
Plug 'morhetz/gruvbox'

" Interface plugins
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'majutsushi/tagbar'

" Additional functionality plugins
Plug 'Yggdroot/indentLine'
Plug 'bronson/vim-trailing-whitespace'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" Syntax highlighting plugins
Plug 'sheerun/vim-polyglot'

" Autocomplete & language tooling plugins
Plug 'Shougo/deoplete.nvim'
Plug 'zchee/deoplete-jedi'

Plug 'eagletmt/neco-ghc'
Plug 'slashmili/alchemist.vim'
Plug 'lervag/vimtex'
cal plug#end()

set termguicolors
colorscheme gruvbox
set background=dark

hi clear SignColumn
hi SignColumn ctermbg=235
hi GitGutterAdd ctermbg=235
hi GitGutterChange ctermbg=235
hi GitGutterDelete ctermbg=235
hi GitGutterChangeDelete ctermbg=235

hi clear VertSplit
hi VertSplit ctermbg=235 ctermfg=235

" Load deoplete on startup
let g:deoplete#enable_at_startup = 1

let g:polyglot_disabled = ['latex']
let g:tex_conceal = ""
let g:vim_markdown_conceal = 0

" Tagbar configuration
let g:tagbar_width = 25

" Additional tagbar configuration
let g:tagbar_type_rust = {
    \ 'ctagstype' : 'rust',
    \ 'kinds' : [
        \'T:types,type definitions',
        \'f:functions,function definitions',
        \'g:enum,enumeration names',
        \'s:structure names',
        \'m:modules,module names',
        \'c:consts,static constants',
        \'t:traits,traits',
        \'i:impls,trait implementations',
    \]
\}

let g:tagbar_type_elixir = {
    \ 'ctagstype' : 'elixir',
    \ 'kinds' : [
        \ 'f:functions',
        \ 'functions:functions',
        \ 'c:callbacks',
        \ 'd:delegates',
        \ 'e:exceptions',
        \ 'i:implementations',
        \ 'a:macros',
        \ 'o:operators',
        \ 'm:modules',
        \ 'p:protocols',
        \ 'r:records'
    \]
\}

let g:tagbar_type_ansible = {
    \ 'ctagstype' : 'ansible',
    \ 'kinds' : [
        \ 't:tasks'
    \],
    \ 'sort' : 0
\}

let g:tagbar_type_haskell = {
    \ 'ctagsbin' : 'hasktags',
    \ 'ctagsargs' : '-x -c -o-',
    \ 'kinds' : [
        \ 'm:modules:0:1',
        \ 'd:data: 0:1',
        \ 'd_gadt: data gadt:0:1',
        \ 't:type names:0:1',
        \ 'nt:new types:0:1',
        \ 'c:classes:0:1',
        \ 'cons:constructors:1:1',
        \ 'c_gadt:constructor gadt:1:1',
        \ 'c_a:constructor accessors:1:1',
        \ 'ft:function types:1:1',
        \ 'fi:function implementations:0:1',
        \ 'o:others:0:1'
    \],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 'm' : 'module',
        \ 'c' : 'class',
        \ 'd' : 'data',
        \ 't' : 'type'
    \},
    \ 'scope2kind' : {
        \ 'module'  : 'm',
        \ 'class'   : 'c',
        \ 'data'    : 'd',
        \ 'type'    : 't'
    \}
\}

" Map the .pl file extension to Prolog (I don't Perl anyway)
let g:filetype_pl="prolog"

au BufNewFile,BufFilePre,BufRead *.txt set filetype=markdown

" vimtex configuration
let g:tex_flavor = 'latex'
let g:vimtex_view_method = 'zathura'

" Set line break for mail composing
"au BufRead /tmp/mutt-* set tw=72

noremap <A-Right> <C-W>l
noremap <A-Left> <C-W>h

"set guicursor=
