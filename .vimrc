set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'preservim/nerdtree'

" we want that nice bar at the bottom
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" we of course want that error checkign 
Plugin 'dense-analysis/ale'

" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}
"
" Not yet sure what it does but hopefully something nice 
Plugin 'tpope/vim-fugitive'

"Plugins for ts highlight recognition
Plugin 'leafgarland/typescript-vim'
Plugin 'peitalin/vim-jsx-typescript'

Plugin 'zenorocha/dracula-theme', {'rtp': 'vim/'}
" We want to be cool and have nice colors


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set number
set relativenumber

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab


" Path for vimrc
set runtimepath^=~/.vim/bundle/ctrlp.vim




inoremap {<cr> {<cr>}<c-o><s-o>
inoremap [<cr> [<cr>]<c-o><s-o>
inoremap (<cr> (<cr>)<c-o><s-o>
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git' 

map <C-n> :NERDTreeToggle<CR>
