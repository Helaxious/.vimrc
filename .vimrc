syntax on

"Map up and down to be able to move through soft-wrapped lines
noremap j gj
noremap k gk
noremap <Up> gk
noremap <Down> gj

" STOP CLEARING MY CLIPBOARD
autocmd VimLeave * call system("xsel -ib", getreg('+'))

imap <silent> <Down> <C-o>gj
imap <silent> <Up> <C-o>gk

"Visual mode tab indentation
vnoremap <TAB> >gv
vnoremap <S-TAB> <gv

"Related to tasks plugin
let g:TasksMarkerBase = '☐'
let g:TasksMarkerInProgress = '»'
let g:TasksMarkerDone = '✔'
let g:TasksMarkerCancelled = '✘'
let g:TasksDateFormat = '%Y-%m-%d %H:%M'
let g:TasksAttributeMarker = '@'
let g:TasksArchiveSeparator = '＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿'

"For vim-easymotion

"Shoo-Shoo, go away default mappings
let g:EasyMotion_do_mapping = 0 

"Not really interested in case-sensitive things..
let g:EasyMotion_smartcase = 1

"I'm going to be honest, I don't think `c`hange is useful when you have `s`ubstitute

"2 character search
nmap c <Plug>(easymotion-overwin-f2)

"For Vim tasks
let maplocalleader="\<space>"

"Control-C to yank to clipboard
vmap <C-c> "+yi

"True-color
set termguicolors

"Strip whitespace on save
let g:better_whitespace_enabled=0
let g:strip_whitespace_on_save=1

"YouCompleteMe related, don't show tooltip automatically when hovering something
let g:ycm_auto_hover = ""

"Control s as save
noremap <silent><c-s> :<c-u>update<cr>
vnoremap <silent><c-s> <c-c>:update<cr>gv
inoremap <silent><c-s> <c-o>:update<cr>

call plug#begin('~/vim/plugins/plugged')
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'easymotion/vim-easymotion'
Plug 'itchyny/lightline.vim'
Plug 'crispydrone/vim-tasks'
Plug 'whatyouhide/vim-gotham'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'sheerun/vim-polyglot'
Plug 'NLKNguyen/papercolor-theme'
Plug 'Valloric/YouCompleteMe'
Plug 'tpope/vim-commentary'
Plug 'junegunn/vim-plug'
call plug#end()

set cursorline
set number
set laststatus=2
set background=dark
set relativenumber

let g:lightline = { 'colorscheme': 'PaperColor' }
" colorscheme spacedust
colorscheme PaperColor
set background=light

"Set the tab character to input multiple spaces, instead of an tab
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab shiftround

"Don't soft wrap lines in the midd
"le of a line
set linebreak

set scrolloff=4 "Number of lines to keep above/below cursor when scrolling
set autoindent "Make new lines have same indentation as previous one
set lazyredraw "Don't update screen when applying macros/scripts
set nocompatible "Who cares about compatibily anyways?

set autoread "re-read files when modified outside vim
set backspace=indent,eol,start "Backspace through everything!
set noswapfile "No swap files, please
set history=3000 "Control-z all the way through the stone age!
