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

" Import plugins via vim-plug
call plug#begin('~/.local/share/nvim')

" Interface plugins
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" Syntax highlighting plugins
Plug 'sheerun/vim-polyglot'

" Autocomplete & language tooling plugins
"Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') }
"Plug 'Chiel92/vim-autoformat'

Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

" (Optional) Multi-entry selection UI.
Plug 'junegunn/fzf'

Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'

cal plug#end()

set background=dark

highlight! link SignColumn LineNr
let g:gitgutter_sign_allow_clobber = 1

" ncm2 configuration
" enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()

" IMPORTANT: :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect

" suppress the annoying 'match x of y', 'The only match' and 'Pattern not found' messages
set shortmess+=c

" LanguageClient-neovim configuration
let g:LanguageClient_loggingFile = '/tmp/LanguageClient.log'
let g:LanguageClient_loggingLevel = 'INFO'
let g:LanguageClient_serverStderr = '/tmp/LanguageServer.log'

let g:LanguageClient_autoStart = 1
let g:LanguageClient_loadSettings = 1

set formatexpr=LanguageClient_textDocument_rangeFormatting()

set hidden
let g:LanguageClient_serverCommands = {
    \ 'rust': ['rust-analyzer'],
    \ }

function SetLSPShortcuts()
    nnoremap ld :call LanguageClient#textDocument_definition()<CR>
    nnoremap lr :call LanguageClient#textDocument_rename()<CR>
    nnoremap lf :call LanguageClient#textDocument_formatting()<CR>
    nnoremap lt :call LanguageClient#textDocument_typeDefinition()<CR>
    nnoremap lx :call LanguageClient#textDocument_references()<CR>
    nnoremap la :call LanguageClient_workspace_applyEdit()<CR>
    nnoremap lc :call LanguageClient#textDocument_completion()<CR>
    nnoremap lh :call LanguageClient#textDocument_hover()<CR>
    nnoremap ls :call LanguageClient_textDocument_documentSymbol()<CR>
    nnoremap lm :call LanguageClient_contextMenu()<CR>
endfunction()

augroup LSP
  autocmd!
  autocmd FileType rust call SetLSPShortcuts()
augroup END

set noshowmode

set signcolumn=yes

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

au BufNewFile,BufFilePre,BufRead *.txt set filetype=markdown
