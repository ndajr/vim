" --------------- VIM Usability Improvements ---------------
nmap <Space> <nop>                                                                                              " Improve auto close characters
nmap <silent> ,/ :nohlsearch<CR>                                                                                " Clean hightlight after search
nnoremap ; :                                                                                                    " Avoid pressing Shift to open the command palette 
cmap w!! w !sudo tee % >/dev/null                                                                               " Save !! when you forgot to sudo

" Vim file shortcuts
nmap <Leader>ev :tabedit ~/vim/init.vim<cr>
nmap <Leader>ep :tabedit ~/vim/plugins.vim<cr>

" Improve indentation
vmap <Tab> <Home>>gv  
vmap <S-Tab> <Home><gv  
imap <S-Tab> <Esc><<i

" Improve moving blocks
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv
nmap <A-Up> ddkP
nmap <A-Down> ddp

" Buffers shortcut
nmap <Leader>bp :bp<cr>
nmap <Leader>bn :bn<cr>

" Improve MacVim navigation
if has("gui_macvim")
  " Press Ctrl-Tab to switch between open tabs (like browser tabs) to 
  " the right side. Ctrl-Shift-Tab goes the other way.
  noremap <C-Tab> :tabnext<CR>
  noremap <C-S-Tab> :tabprev<CR>

  " Switch to specific tab numbers with Command-number
  noremap <D-1> :tabn 1<CR>
  noremap <D-2> :tabn 2<CR>
  noremap <D-3> :tabn 3<CR>
  noremap <D-4> :tabn 4<CR>
  noremap <D-5> :tabn 5<CR>
  noremap <D-6> :tabn 6<CR>
  noremap <D-7> :tabn 7<CR>
  noremap <D-8> :tabn 8<CR>
  noremap <D-9> :tabn 9<CR>
  " Command-0 goes to the last tab
  noremap <D-0> :tablast<CR>
endif


" --------------- Plugins Shortcuts ---------------
nnoremap Ï :Autoformat<cr>
