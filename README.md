vim-setup
=========

My vim setup uses [pathogen](https://github.com/tpope/vim-pathogen) to manage all plugins. All plugins are installed as git submodules.

Setup
=====

```
git clone git@github.com:Partyschaum/vim-setup.git ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc
cd ~/.vim
git submodule init
git submodule update
```

Some of the submodules are mercurial repositories. To use them with git have a look at [Bridge Support In Git For Support Mercurial And Bazaar](http://felipec.wordpress.com/2012/11/13/git-remote-hg-bzr-2/).
