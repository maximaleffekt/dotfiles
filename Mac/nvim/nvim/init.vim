"Basic preferences
set rnu
set nu
syntax on
set splitbelow
set mouse=a

"Vim-Plug preferences
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'kassio/neoterm'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'sheerun/vim-polyglot'
"Plug 'Yggdroot/indentLine' "Have to experiment with the settings here more

Plug 'preservim/nerdtree'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'sainnhe/gruvbox-material'
call plug#end()

"Neoterm stuff:
let g:neoterm_default_mod = 'botright'
let g:neoterm_autoinsert = 1
let g:neoterm_size = 10
"tnoremap <Esc> <C-\><C-n><C-w>k
"Makes Control-W exit Terminal mode in neoterm to allow faster switching:
tnoremap <c-w> <c-\><c-n><c-w>
"Maps F3 to toggling the neoterm window
noremap <F3> :Ttoggle<CR>
tnoremap <F3> <c-\><c-n>:Ttoggle<CR><c-w>l
"This does the ame thing as the above shortcuts but for double space
noremap <Space><Space> :Ttoggle<CR>
"tnoremap <Space><Space> <c-\><c-n>:Ttoggle<CR><c-w>l

"Nerdtree stuff:
" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p
" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif
let NERDTreeShowHidden = 1      " Show hidden files
let NERDTreeMinimalMenu = 1     " Use the minimal menu (m)
"Open Nerdtree with F2
nmap <F2> :NERDTreeToggle<CR>

"Gruvbox stuff:
set background=dark
let g:gruvbox_material_background = 'medium'
colorscheme gruvbox-material
