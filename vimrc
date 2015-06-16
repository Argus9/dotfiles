" A minimal vimrc

set nocompatible

" AUTO-INSTALL VIM-PLUG
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

" VIM-PLUG
call plug#begin('~/.vim/plugged')
  Plug 'tpope/vim-sensible'
  Plug 'junegunn/vim-easy-align'
  Plug 'bling/vim-airline'
  Plug 'tpope/vim-surround'
  Plug 'gioele/vim-autoswap'
  Plug 'tpope/vim-repeat'
  Plug 'wincent/Command-T'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-fugitive'
call plug#end()

" use comma as leader key
let mapleader=","

" Make it easy to use mouse for selecting, copy/paste and scroll...
set mouse=r

" Save buffers
set autowriteall
au FocusLost * :wa
au FocusLost * silent! wa

" Shortcuts
nmap <leader>bq :bp <BAR> bd #<cr>

:nnoremap <C-n> :bnext<CR>
:nnoremap <C-p> :bprevious<CR>

" Experimental...
" http://getpocket.com/a/read/646417642
let g:netrw_liststyle=3

" Make json files highlighted too
autocmd BufNewFile,BufRead *.json set ft=javascript

" Always show statusline
:set laststatus=2

" VIMCASTS...
set ts=2 sts=2 sw=2 expandtab

".vimrc
nnoremap <leader>v :source $MYVIMRC<CR>


" TAB MADNESS
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
"let g:airline#extensions#tabline#fnamemod = ':t'
