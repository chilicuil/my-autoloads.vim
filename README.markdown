[my-autoloads.vim](https://github.com/javier-lopez/my-autoloads.vim) is a global plugin who set autoloads  according to they way I use [vim](http://vim.org). It sets highly opinionated settings. Probably not something you would like to use straight ahead. Some of the features are:

- Restore cursor to file position in previous editing session.
- Turn off existing search highlighting.
- Browse documentation with `<Enter><End>`.
- Etc.

Requirements
------------

* Vim 7.0+

Installation
------------

- [Vundle](https://github.com/gmarik/vundle) way (recommended), add the following to your $HOME/.vimrc file:

        Bundle 'javier-lopez/my-autoloads.vim'

    And run inside of vim:

        :BundleInstall

- [Pathogen](https://github.com/tpope/vim-pathogen) way:

        $ git clone https://github.com/javier-lopez/my-autoloads.vim.git ~/.vim/bundle/my-autoloads.vim

- **Manual** (simplest if you've never heard of vundle or pathogen), download the zip file generated from github and extract it to $HOME/.vim

        mv my-autoloads.vim*.zip $HOME/.vim
        cd $HOME/.vim && unzip my-autoloads.vim*.zip

    Update the help tags from vim:

        :helpt ~/.vim/doc/
