" Directorio de plugins
call plug#begin('~/.local/share/nvim/plugged')

" Aquí irán los plugins a instalar
Plug 'tiagovla/tokyodark.nvim'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'navarasu/onedark.nvim'
Plug 'github/copilot.vim'
Plug 'neovim/nvim-lspconfig' "autocompletition servers
Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
" 9000+ Snippets
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
Plug 'luochen1990/rainbow'
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
"onehalf theme-----------------------------------------------
syntax on
set t_Co=256
set cursorline
let g:airline_theme='onehalfdark'
" lightline
" let g:lightline = { 'colorscheme': 'onehalfdark' }
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
"configuracion autocompletado----------------------------------
lua << EOF
local lsp = require "lspconfig"
local coq = require "coq"
lsp.pyright.setup{coq.lsp_ensure_capabilities()}
lsp.ccls.setup{coq.lsp_ensure_capabilities()}

EOF
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle
"configuraciones de nerdtree
map  <C-l> :tabn<CR>
map  <C-n> :tabnew<CR>
map  <C-h> :tabp<CR>
:set shiftwidth=4
