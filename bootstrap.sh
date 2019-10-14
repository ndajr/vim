cd ~
[[ ! -e .vimrc ]] && ln -s ./vim/init.vim .vimrc
[[ ! -e .vim ]] && ln -s ./vim/.vim .
vim +PluginInstall +qall
echo "Vim successfully initialized!"
cd -
