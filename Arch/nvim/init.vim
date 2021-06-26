"Basics:
set rnu
set nu
syntax on
set splitbelow
set mouse=a
set undofile
set undodir=~/.local/share/nvim/backups/undo/
set clipboard=unnamedplus
set termguicolors


"Shortcuts:
let mapleader = ' '
"Disables spacebar in normal mode, to allow for easier leader key usage
noremap <Space> 
noremap ö :
"Allows easy switching between splits
noremap <leader>h <c-w>h
noremap <leader>j <c-w>j
noremap <leader>k <c-w>k
noremap <leader>l <c-w>l
"Toggles limelight
noremap <leader>g :Limelight!!<CR>
"Disables highlighting from searches when pressing escape
map <esc> <esc>:noh<CR>
"Toggles nerdtree, duh
nmap <F2> :NERDTreeToggle<CR>
"Maps F3 to toggling the neoterm window
noremap <F3> :Ttoggle<CR>
tnoremap <F3> <c-\><c-n>:Ttoggle<CR><c-w>l
"Makes Control-W exit Terminal mode in neoterm to allow faster switching
tnoremap <c-w> <c-\><c-n><c-w>
"Opens Markdown preview
let vim_markdown_preview_hotkey='<leader>m'
"Opens FZF window
nnoremap <leader>z :FZF ~<CR>

"Plug-ins:

call plug#begin('~/.vim/plugged')
"Small add-ons
Plug 'tpope/vim-sensible'
Plug 'vim-airline/vim-airline'
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'

"Big add-ons
Plug 'junegunn/limelight.vim'
Plug 'kassio/neoterm'
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf'

"Currently unused add-ons, here to remember them
"Plug 'davidgranstrom/nvim-markdown-preview'
Plug 'JamshedVesuna/vim-markdown-preview'

"Colorschemes
Plug 'sainnhe/gruvbox-material'
Plug 'joshdick/onedark.vim'
Plug 'ghifarit53/tokyonight-vim'
call plug#end()

"Limelight:
let g:limelight_conceal_ctermfg = 'gray'


"Neoterm:
let g:neoterm_default_mod = 'botright'
let g:neoterm_autoinsert = 1
let g:neoterm_size = 10

"Don't remember what this was for, currently unused
"tnoremap <Esc> <C-\><C-n><C-w>k


"Nerdtree:
" Start NERDTree and put the cursor back in the other window, currently unused
"autocmd VimEnter * NERDTree | wincmd p

" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

let NERDTreeShowHidden = 1      " Show hidden files
let NERDTreeMinimalMenu = 1     " Use the minimal menu (m)

"FZF:
let g:fzf_layout = { 'window': 'enew' }

"Markdown:
let vim_markdown_preview_toggle=1
let vim_markdown_preview_browser='Firefox'


"Gruvbox:
"set background=dark
let g:gruvbox_material_background = 'medium'

"Tokyonight
let g:tokyonight_style = "storm"
let g:tokyonight_italic_functions = 1
let g:tokyonight_transparent_background = 1
"let g:airline_theme = "tokyonight"

"Onedark:
let g:onedark_terminal_italics = 1

colorscheme gruvbox-material

"Miscellaneous:
"translates W to w in exec mode to prevent annoying error
"https://stackoverflow.com/questions/3878692/how-to-create-an-alias-for-a-command-in-vim
cnoreabbrev <expr> W ((getcmdtype() is# ':' && getcmdline() is# 'W')?('w'):('W'))
