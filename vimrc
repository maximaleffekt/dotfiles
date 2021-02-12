" Configuration file for vim
set modelines=0		" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup

let skip_defaults_vim=1

set rnu
syntax on
" colorscheme industry

call plug#begin('~/.vim/plugged')
Plug 'sainnhe/gruvbox-material'
call plug#end()

if has('termguicolors')
	set termguicolors
endif

set background=dark
let g:gruvbox_material_background = 'medium'
colorscheme gruvbox-material
