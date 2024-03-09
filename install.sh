#!/bin/bash

# rm .vim dir
# if arg -c, rm .vim

if [ "$1" == "-c" ]; then
  echo "Removing .vim directory..."
  rm -rf ~/.vim
fi


# Check if Vim-Plug is installed
if [ ! -f ~/.vim/autoload/plug.vim ]; then
  echo "Vim-Plug not found. Installing Vim-Plug..."
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

# Check if .vimrc exists, create it if not
if [ ! -f ~/.vimrc ]; then
  echo "Creating .vimrc file..."
  touch ~/.vimrc
fi


echo "Adding Vim-Plug to .vimrc"
echo "call plug#begin('~/.vim/plugged')" > ~/.vimrc


# create append function. this function get a string as argument. 
Plug() {
  echo "--> $1"
  echo "  Plug '$1'" >> ~/.vimrc
}

# add your plugin here
Plug 'preservim/nerdtree'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
# Plug 'goldfeld/vim-seek'  <--- only one line
# Plug 'justinmk/vim-sneak' 
Plug 'easymotion/vim-easymotion'
Plug 'kien/ctrlp.vim'
# theme
Plug 'morhetz/gruvbox'
Plug '907th/vim-auto-save'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-commentary'
# session
# Plug 'xolox/vim-misc'
# Plug 'xolox/vim-session'


#
echo "call plug#end()" >> ~/.vimrc

# Install plugins using Vim-Plug
vim +PlugInstall +qall

# source mappings.vim
echo "" >> ~/.vimrc
echo "\" <leader>vm -> to open mappings.vim" >> ~/.vimrc 
echo "source ~/.vim/mappings.vim" >> ~/.vimrc

# theme
echo "colorscheme gruvbox" >> ~/.vimrc

# install lazygit


# copy all the content of mappings.vim to ~/.vim/mappings.vim
echo "Copying mappings.vim to ~/.vim/mappings.vim"
cp mappings.vim ~/.vim/mappings.vim



echo "Setup complete. NERDTree should now be installed."

