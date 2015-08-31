#!/bin/bash

function install_vim_dotfiles() {
  if [ ! -d "$HOME/.vim/bundle/Vundle.vim" ]; then 
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim 
  else
    echo -e 'Vundle already installed'
  fi

  stow vim -t $HOME
  vim +PluginInstall +qall
}

function install_xresources_dotfiles() {
  stow xresources -t $HOME
}
 

install_vim_dotfiles
install_xresources_dotfiles
