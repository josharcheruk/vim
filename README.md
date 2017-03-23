## vimrc installation instructions

#### Create directory .vim/

`mkdir -p ~/.vim`

#### Clone vim repo to ~/.vim

`git clone https://github.com/PuffinBlue/vim.git ~/.vim`

#### Symlink ~/.vim/vimrc to ~/.vimrc

`ln -s ~/.vim/vimrc ~/.vimrc`

#### Clone Vundle to ~/.vim

`git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

#### Install plugins

Open vim and run `:PluginInstall` command
