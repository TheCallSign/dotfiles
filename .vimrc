" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

" Have numbered lines enabled by default
set nu

" Enable Syntax highlighting
syntax on

" Enable mouse support
set mouse=a

" Set tab default spaces to 2
set shiftwidth=2
set tabstop=2

" check if vim-plug is installed, if it isnt, install it
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Load plugins
call plug#begin()
Plug 'terryma/vim-multiple-cursors'
call plug#end()
" set  viminfo location
set viminfo+=n~/.vim/viminfo
