"                            _)            
"  __ \    _ \   _ \ \ \   /  |  __ `__ \  
"  |   |   __/  (   | \ \ /   |  |   |   | 
" _|  _| \___| \___/   \_/   _| _|  _|  _| 
" Maximaleffekt's neovim configuration file

"Basics:
"set rnu
set nu
syntax on
set splitbelow
set mouse=a
set undofile
set undodir=~/.local/share/nvim/backups/undo/
set clipboard=unnamedplus
set termguicolors
set ignorecase
set smartcase

"Shortcuts:
let mapleader = ' '

"Disables spacebar in normal mode, to allow for easier leader key usage
noremap <Space> <NOP> 

noremap ö :
noremap ä }
noremap Ä {

"Allows easy switching between splits
noremap <leader>h <c-w>h
noremap <leader>j <c-w>j
noremap <leader>k <c-w>k
noremap <leader>l <c-w>l

"Disables highlighting from searches when pressing escape
map <esc> <esc>:nohlsearch<CR>

"Quickly creates split
noremap <leader>sv :vsplit<CR><c-w>l
noremap <leader>sh :split<CR><c-w>l

"Toggles various plugins
noremap <leader>ce :CocEnable<CR>
noremap <leader>cd :CocDisable<CR>
noremap <leader>g :Limelight!!<CR>
nmap <F2> :NERDTreeToggle<CR>
nnoremap <leader>z :FZF ~<CR>

"Plug-ins:
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'vim-airline/vim-airline'
Plug 'sheerun/vim-polyglot'

Plug 'junegunn/limelight.vim'
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf'

"Plug 'glepnir/dashboard-nvim'

Plug 'github/copilot.vim'

"Colorschemes:
Plug 'sainnhe/gruvbox-material'
Plug 'ghifarit53/tokyonight-vim'
"Plug 'joshdick/onedark.vim'
"Plug 'rayes0/blossom.vim'
"Plug 'drewtempelmeyer/palenight.vim'
"Plug 'FrenzyExists/aquarium-vim'
call plug#end()


"Plug-in settings:

"Limelight:
let g:limelight_conceal_ctermfg = 'DarkGray'
let g:limelight_conceal_guifg = 'DarkGray'

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

"Gruvbox:
"set background=dark
let g:gruvbox_material_background = 'medium'

"Tokyonight:
let g:tokyonight_style = "storm"
let g:tokyonight_italic_functions = 1
let g:tokyonight_transparent_background = 0

colorscheme gruvbox-material
let g:airline_theme = "gruvbox_material"

"Miscellaneous:
"translates W to w in exec mode to prevent annoying error
"https://stackoverflow.com/questions/3878692/how-to-create-an-alias-for-a-command-in-vim
cnoreabbrev <expr> W ((getcmdtype() is# ':' && getcmdline() is# 'W')?('w'):('W'))
"the next line is probably bad
cnoreabbrev <expr> ö ((getcmdtype() is# ':' && getcmdline() is# 'ö')?('q'):('q'))
" Set scrolloff to 25% of the window height. Thanks koala#8944
augroup VCenterCursor
  au!
  au BufEnter,WinEnter,WinNew,VimResized *,*.*
        \ let &scrolloff=winheight(win_getid())/4
augroup END
" Always start nvim with Coc disabled
let g:coc_start_at_startup = v:false
