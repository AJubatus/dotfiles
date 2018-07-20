" Stuff for google env
function IsGoogle()
  return !empty(glob("~/.config/nvim/google.vim"))
endfunction
"if IsGoogle()
"  so ~/.config/nvim/google.vim
"endif

" Plug initialization
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
  \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  augroup Plugins
    au!
    au VimEnter * PlugInstall | source "~/.config/nvim/init.vim"
  augroup END
endif

call plug#begin('~/.local/share/nvim/plugged')
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'chriskempson/base16-vim'
call plug#end()

let base16colorspace=256
colorscheme base16-default-dark

autocmd vimenter * AirlineRefresh
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

set number
