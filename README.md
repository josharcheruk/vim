## vimrc installation instructions

#### Create directory .vim/

`mkdir -p ~/.vim`

#### Clone vim repo to ~/.vim

`git clone git@gitlab.com:josharcher/vim.git ~/.vim`

#### Symlink ~/.vim/vimrc to ~/.vimrc

`ln -s ~/.vim/vimrc ~/.vimrc`

#### Install plugins

If not done automatically, open vim and run `:PlugInstall` 
