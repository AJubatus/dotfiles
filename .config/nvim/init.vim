set number
set undofile
set termguicolors

function! SourceIfExists(file)
  if filereadable(expand(a:file))
    exe 'source' a:file
  endif
endfunction

source $HOME/.config/nvim/plugins.vim
call SourceIfExists("$HOME/.config/nvim/host.vim")

set wildmenu
set wildmode=longest,list,full
