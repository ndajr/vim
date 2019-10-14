
call plug#begin('~/.vim/plugged')

" -------- Theme ---------
Plug 'drewtempelmeyer/palenight.vim'

" ------ Must have ------
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'zxqfl/tabnine-vim'
Plug 'sheerun/vim-polyglot'
Plug 'chiel92/vim-autoformat'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" ------ Languages ------
Plug 'hashivim/vim-terraform'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

call plug#end()


" ------ Plugins Configs --------
" To see the Plugin Shortcuts, check the file 'mappings.vim'

" CtrlP
nmap <Leader>r :CtrlPBufTag<cr>
nmap <Leader>e :CtrlPMRUFiles<cr>
let g:ctrlp_custom_ignore = 'node_modules\|git'
let g:ctrlp_max_files=20000

