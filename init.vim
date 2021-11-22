" Directorio de plugins
call plug#begin('~/.local/share/nvim/plugged')

" Aquí irán los plugins a instalar
Plug 'Shougo/echodoc.vim' "autocomp
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
call plug#end()

" Luego de esta línea puedes agregar tus configuraciones y mappings
:set number
set noshowmode  " No mostrar el modo actual (echodoc hace uso de este espacio)
:PlugUpdate
:PlugUpgrade
" Activar echodoc al iniciar Neovim
let g:echodoc_enable_at_startup = 1
let g:NERDTreeChDirMode = 2  " Cambia el directorio actual al nodo padre actual

" Abrir/cerrar NERDTree con F2
map <F2> :NERDTreeToggle<CR>
let g:airline#extensions#tabline#enabled = 1  " Mostrar buffers abiertos (como pestañas)
let g:airline#extensions#tabline#fnamemod = ':t'  " Mostrar sólo el nombre del archivo

" Cargar fuente Powerline y símbolos (ver nota)
let g:airline_powerline_fonts = 1

