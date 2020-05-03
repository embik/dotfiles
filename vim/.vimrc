syntax enable

" Tabs and indention
set sw=4
set tabstop=4
set softtabstop=4
set expandtab
filetype indent on

au FileType html setl sw=2 sts=2
au FileType yaml setl sw=2 sts=2

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
set encoding=utf-8

"set conceallevel=0

function! BuildYCM(info)
    " info is a dict with 3 fields
    " - name: plugin name
    " - status: 'installed', 'updated', 'unchanged'
    " - force: set on PlugInstall! or PlugUpdate!
    if a:info.status == 'installed' || a:info.force
        " !./install.py --clang-completer --system-libclang --system-boost --go-completer --rust-completer
        !python3 ./install.py --clang-completer --system-libclang --system-boost --go-completer --rust-completer
    endif
endfunction

" Import plugins via vim-plug
call plug#begin()

" Interface plugins
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'majutsushi/tagbar'
Plug 'junegunn/limelight.vim'

" Additional functionality plugins
Plug 'Yggdroot/indentLine'
Plug 'bronson/vim-trailing-whitespace'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" Syntax highlighting plugins
Plug 'sheerun/vim-polyglot'

" Autocomplete & language tooling plugins
Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') }
Plug 'Chiel92/vim-autoformat'
cal plug#end()

set background=dark

hi clear SignColumn
hi SignColumn               ctermbg=235
hi GitGutterAdd             ctermbg=235 ctermfg=10
hi GitGutterChange          ctermbg=235 ctermfg=11
hi GitGutterDelete          ctermbg=235 ctermfg=9
hi GitGutterChangeDelete    ctermbg=235

hi clear VertSplit
hi VertSplit ctermbg=235 ctermfg=235

let g:ycm_python_binary_path = '/usr/bin/python3'
let g:ycm_server_python_interpreter = '/usr/bin/python3'
let g:ycm_language_server =
\ [
\   {
\     'name': 'rust',
\     'cmdline': ['rust-analyzer'],
\     'filetypes': ['rust'],
\     'project_root_files': ['Cargo.toml']
\   }
\ ]

set noshowmode

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
let g:vimtex_view_method = 'evince'

noremap <A-Right> <C-W>l
noremap <A-Left> <C-W>h
