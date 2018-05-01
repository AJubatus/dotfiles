" Stuff for google env                                                                                                                                                                                             
function IsGoogle()                                                                                                                                                                                                
  return !empty(glob("~/.config/nvim/google.vim"))                                                                                                                                                                           
endfunction                                                                                                                                                                                                        
if IsGoogle()                                                                                                                                                                                                      
    so ~/.config/nvim/google.vim                                                                                                                                                                                             
endif

call plug#begin('~/.local/share/nvim/plugged')


Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

autocmd vimenter * AirlineRefresh
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'base16_shell'
let g:airline_powerline_fonts = 1
