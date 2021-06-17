# source: https://github.com/glepnir/galaxyline.nvim/issues/178#issuecomment-852673291
au BufEnter,BufWinEnter,WinEnter,CmdwinEnter *
                       \ call s:disable_statusline('NvimTree')
fun! s:disable_statusline(bn)
   if a:bn == bufname('%')
       set laststatus=0
   else
       set laststatus=2
   endif
endfunction
