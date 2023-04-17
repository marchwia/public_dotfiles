set nocompatible	" be iMproved, required
filetype off		" required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugin list
Plugin 'HerringtonDarkholme/yats.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'alvan/vim-closetag'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'fatih/vim-go'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'luochen1990/rainbow'
Plugin 'majutsushi/tagbar'
Plugin 'morhetz/gruvbox'
Plugin 'tell-k/vim-autopep8'
Plugin 'tmhedberg/SimpylFold'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-dadbod'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-flagship'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-sleuth'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-vinegar'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-ruby/vim-ruby'
Plugin 'vim-syntastic/syntastic'

" All plugins before this line
call vundle#end()	" required
filetype plugin indent on 	" required

" Load sensible defaults
runtime! plugin/sensible.vim

" Non-plugin stuff below

set encoding=utf-8
set background=dark
set hlsearch
set laststatus=2
set showtabline=2
set guioptions-=e

" Mappings
" Run make test
noremap <F12> :Make test<CR>
" Toggle the tagbar
nmap <F8> :TagbarToggle<CR>
" Quick save and load session
nnoremap <F5> :mks!<CR>
nnoremap <F9> :so Session.vim<CR>
" Quick fix
nnoremap <F11> :YcmCompleter FixIt<CR>

" Activate vim-repeat - put maps above
silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Line numbering
set nu

" Git tags
set tags^=./.git/tags;

" Tmux and colors
silent! colorscheme gruvbox
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_contrast_light = 'hard'

if &term =~'256color'
	" disable Background Color Erase (BCE) so that color schemes
	" render properly when inside 256-color tmux and GNU screen.
	" see also http://snk.tuxfamily.org/log/vim-256color-bce.html
	set t_ut=
endif

if exists('+termguicolors')
	let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
	let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
	set termguicolors
	set term=xterm-256color
endif

" Autoformat Python code
let g:autopep8_aggressive = 2
let g:autopep8_disable_show_diff = 1
let g:autopep8_on_save = 1

" Split windows to the right and to the bottom
set splitright
set splitbelow

" Python
let g:SimpylFold_docstring_preview = 1

" Colorful brackets
let g:rainbow_active = 1

" Highlight current line
set cursorline

" Enable per-project .vimrc files
set exrc
set secure
