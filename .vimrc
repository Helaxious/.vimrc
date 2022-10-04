syntax on

"Map up and down to be able to move through soft-wrapped lines
noremap j gj
noremap k gk
noremap <Up> gk
noremap <Down> gj

"Switch tabs
map <C-Tab> gt
map <C-S-Tab> gT
imap <C-Tab> gt
imap <C-S-Tab> gT
:tnoremap <C-Tab> <C-\><C-n> gt
:tnoremap <C-S-Tab> <C-\><C-n> gT

" STOP CLEARING MY CLIPBOARD
autocmd VimLeave * call system("xsel -ib", getreg('+'))

imap <silent> <Down> <C-o>gj
imap <silent> <Up> <C-o>gk

"Esc to exit terminal mode
:tnoremap <Esc> <C-\><C-n>

map <C-S-t> :tabnew +term\ fish<CR> :startinsert<CR>
:tnoremap <C-S-t> <C-\><C-n> :tabnew +term\ fish<CR> :startinsert<CR>

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

"For nerdtree
nnoremap <leader>t :NERDTree<CR>

"For vim-easymotion

"Shoo-Shoo, go away default mappings
let g:EasyMotion_do_mapping = 0 

"Not really interested in case-sensitive things..
let g:EasyMotion_smartcase = 1

"2 character search
nmap z <Plug>(easymotion-overwin-f2)

"1 character search
nmap Z <Plug>(easymotion-overwin-f)

nmap XX :q<CR>

"For Vim tasks
let maplocalleader="\<space>"

"Control-C to yank to clipboard
vmap <C-c> "+yi
"Control-Shift-V to paste from clipboard
map <C-S-v> "+p

"True-color
set termguicolors

"Strip whitespace on save
let g:better_whitespace_enabled=0
let g:strip_whitespace_on_save=1

"YouCompleteMe related, don't show tooltip automatically when hovering something
let g:ycm_auto_hover = ""

"Vim-startify
let g:startify_custom_header_quotes = [
    \ ['Neovim.', "Now 98% FOSS!"],
    \ ["Don't sink your app with runtime bloat", "Program in C will stay afloat", "Do what you want there, close to the hardware!", "Program in C!"],
    \ ["It's not a bug", "It's a feature"], 
    \ ["This little maneuver's going to cost us 51 years"], 
    \ ["Pizza time"], 
    \ ["The power of the vim, in my hand"], 
    \ ["Still got the moves!"], 
    \ ["Você não está pensando em 4 dimensões!"], 
    \ ["Falou tiozões do zap"], 
    \ ["Você pode agradecer Alan Turing", "por tudo isso"], 
    \ ["Antes de falarmos sobre clean coode", "devemos primeiro definir o que", "é clean code"], 
    \ ["Ada Lovelace realmente mostrou", "para nós como é que se fazia"], 
    \ ["Deixe o seu like, se inscreva", "e ativa o sininho para não perder nenhum vídeo"], 
    \ ["One does not simply program in C++"], 
    \ ["We estimate that in the next decade, everyone", "will have their own Turboencabulator at home."]
\ ]
let g:startify_custom_header = 'startify#fortune#boxed()'

"Control s as save
noremap <silent><c-s> :<c-u>update<cr>
vnoremap <silent><c-s> <c-c>:update<cr>gv
inoremap <silent><c-s> <c-o>:update<cr>

call plug#begin('~/vim/plugins/plugged')
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-obsession'
Plug 'itchyny/lightline.vim'
Plug 'mhinz/vim-startify'
Plug 'crispydrone/vim-tasks'
Plug 'whatyouhide/vim-gotham'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'sheerun/vim-polyglot'
Plug 'NLKNguyen/papercolor-theme'
" Plug 'Valloric/YouCompleteMe'
Plug 'tpope/vim-commentary'
Plug 'junegunn/vim-plug'
call plug#end()

"Taken from https://stackoverflow.com/questions/1642611/how-to-save-and-restore-multiple-different-sessions-in-vim
"Two functions that basically wrap around vim-obsession and accept an argument
"for session directory
let g:sessiondir = $HOME . "/.local/share/nvim/session"

command! -nargs=1 MkSession call MkSession(<f-args>)
function! MkSession(sessionfile)
  if !isdirectory(g:sessiondir)
    call mkdir(g:sessiondir, "p")
  endif
  exe 'Obsession' g:sessiondir . '/' . a:sessionfile
endfunction

command! -nargs=1 LoadSession call LoadSession(<f-args>)
function! LoadSession(sessionfile)

  let a:sessionpath = g:sessiondir . a:sessionfile
  if (filereadable(a:sessionpath))
    exe 'source ' a:sessionpath
  else
    echo "No session loaded."
  endif
endfunction

set cursorline
set number
set laststatus=2
set background=dark
set relativenumber

" colorscheme spacedust
colorscheme PaperColor
" colo gruvbox
set background=light

let g:lightline={ 'colorscheme': 'PaperColor' }

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
