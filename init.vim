"--------------- Initializing Vim Plug ---------------"
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


"--------------- Initializing Config Files ---------------"
so ./plugins.vim
so ./config.vim
so ./theme.vim
so ./mappings.vim


"--------------- Auto-Commands ---------------"
augroup autosourcing
  autocmd!
  autocmd BufWritePost init.vim source %
augroup END
