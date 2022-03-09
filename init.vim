" Directorio de plugins
call plug#begin('~/.local/share/nvim/plugged')

" Aquí irán los plugins a instalar
Plug 'tiagovla/tokyodark.nvim'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'navarasu/onedark.nvim'
Plug 'github/copilot.vim'
Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
" 9000+ Snippets
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}

" lua & third party sources -- See https://github.com/ms-jpq/coq.thirdparty
" Need to **configure separately**


Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}
" - shell repl
" - nvim lua api
" - scientific calculator
" - comment banner
" - etc
call plug#end()

" Luego de esta línea puedes agregar tus configuraciones y mappings
:set number
:set noshowmode  " No mostrar el modo actual (echodoc hace uso de este espacio)
:set mouse=a "usar el mouse para desplazarse
:set clipboard+=unnamedplus
:set title "la terminal muestra el nombre del archivo
" Activar echodoc al iniciar Neovim
let g:echodoc_enable_at_startup = 1
let g:NERDTreeChDirMode = 2  " Cambia el directorio actual al nodo padre actual
let g:coq_settings = { 'auto_start': v:true }
" Abrir/cerrar NERDTree con F2
map <F2> :NERDTreeToggle<CR>
let g:airline#extensions#tabline#enabled = 1  " Mostrar buffers abiertos (como pestañas)
let g:airline#extensions#tabline#fnamemod = ':t'  " Mostrar sólo el nombre del archivo
let g:onedark_style = 'darker'
"tokyiodark----------------------------
let g:tokyodark_transparent_background = 1
let g:tokyodark_enable_italic_comment = 1
let g:tokyodark_enable_italic = 0
let g:tokyodark_color_gamma = "1.0"
colorscheme tokyodark
"configuracion autocompletado----------------------------------

