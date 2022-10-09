"Disabling netrw
let g:loaded = 1
let g:loaded_netrwPlugin = 1

"Making search case-insensitive
set ignorecase
set smartcase

"Map up and down to be able to move through soft-wrapped lines
noremap j gj
noremap k gk
noremap <Up> gk
noremap <Down> gj

"Personal thing for me in jekyll blogging
nmap <C-k> i{% image_link %}<ESC>hhh<C-S-V>li width:90<ESC>

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
    \ ["We estimate that in the next decade, everyone", "will have their own Turboencabulator at home."],
    \ ["Just wrap it in a try catch bro"],
    \ ["How do you exit vim?"],
    \ ["Vim-tastic!"],
\ ]
let g:startify_skiplist = [
    \ "/run/*"
\ ]
let g:startify_custom_header = 'startify#fortune#boxed()'

"Control s as save
noremap <silent><c-s> :<c-u>update<cr>
vnoremap <silent><c-s> <c-c>:update<cr>gv
inoremap <silent><c-s> <c-o>:update<cr>

call plug#begin('~/vim/plugins/plugged')
Plug 'kyazdani42/nvim-web-devicons'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'morhetz/gruvbox'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-obsession'
Plug 'https://github.com/shanesmith/vim-surround.git'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'itchyny/lightline.vim'
Plug 'mhinz/vim-startify'
Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }
Plug 'crispydrone/vim-tasks'
Plug 'whatyouhide/vim-gotham'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'sheerun/vim-polyglot'
Plug 'NLKNguyen/papercolor-theme'
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
Plug 'kyazdani42/nvim-tree.lua'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-file-browser.nvim'
Plug 'nvim-telescope/telescope-ui-select.nvim'
Plug 'jiangmiao/auto-pairs'
Plug 'wfxr/minimap.vim'
Plug 'romainl/vim-cool'
Plug 'junegunn/goyo.vim'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'tpope/vim-commentary'
Plug 'alvarosevilla95/luatab.nvim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'p00f/nvim-ts-rainbow'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/cmp-buffer'
Plug 'dmitmel/cmp-digraphs'
Plug 'hrsh7th/nvim-cmp'
Plug 'folke/tokyonight.nvim'
Plug 'junegunn/vim-plug'
call plug#end()

"mason.nvim
lua require("mason").setup()
lua require("mason-lspconfig").setup()

"neovim-lspconfig
lua require('lspconfig').bashls.setup({})
lua require('lspconfig').clangd.setup({})
lua require('lspconfig').cmake.setup({})
lua require('lspconfig').cssls.setup({})
lua require('lspconfig').html.setup({})
lua require('lspconfig').pylsp.setup({
    \ settings = {
        \ pylsp = {
            \ plugins = {
                \ autopep8 = {
                    \ enabled = false,
                \ },
                \ mccabe = {
                    \ enabled = false,
                \ },
                \ pycodestyle = {
                    \ enabled = false,
                \ },
                \ pyflakes = {
                    \ enabled = false,
                \ },
                \ yapf = {
                    \ enabled = false,
                \ },
            \ },
        \ },
    \ },
\ })
lua require('lspconfig').rust_analyzer.setup({})
lua require('lspconfig').vimls.setup({})

" This dictionary entry doesnt work, but its not like vimscript autocomplete
" is *that* important
    " \ 'vim'        : 'vimls',
let g:lsc_auto_map = 1

"nvim-cmp

set completeopt=menu,menuone,noselect

lua <<EOF
    require('cmp').setup({
        sources = {
            { name = 'nvim_lsp' },
            { name = 'buffer' },
        },
    })

    local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
    
    require('lspconfig')['bashls'].setup({ capabilities = capabilities })
    require('lspconfig')['clangd'].setup({ capabilities = capabilities })
    require('lspconfig')['cmake'].setup({ capabilities = capabilities })
    require('lspconfig')['cssls'].setup({ capabilities = capabilities })
    require('lspconfig')['html'].setup({ capabilities = capabilities })
    require('lspconfig')['pylsp'].setup({ capabilities = capabilities })
    require('lspconfig')['rust_analyzer'].setup({ capabilities = capabilities })
    require('lspconfig')['vimls'].setup({ capabilities = capabilities })
EOF

"nvim-treesitter
lua require('nvim-treesitter.configs').setup({
    \ highlight = {
    \   enable = true,
    \   additional_vim_regex_highlighting = true;
    \ },
    \ indent = { enable = true  },
    \ incremental_selection = { enable = true  },
    \ rainbow = { enable = true,
    \             extended_mode=false,
    \             colors = {"#a5c8e4",
    \                       "#9edbbd",
    \                       "#d3d683",
    \                       }
    \ },
\ })

"indent-blankline.nvim"
lua vim.opt.list = true
lua vim.opt.listchars:append "space:⋅"

let g:indent_blankline_char_highlight_list = ['CoolLineIndentation1', 'CoolLineIndentation2', 'CoolLineIndentation3']

lua require("indent_blankline").setup({
    \ space_char_blankline = " ",
    \ show_current_context = true,
    \ show_current_context_start = true,
\})

"minimap.vim
let g:minimap_highlight_range = 1

"luatab.nvim
lua require('luatab').setup()

"Telescope.nvim
lua require('telescope').setup({
    \ extensions = {
        \ file_browser = {
            \ hijack_netrw = true,
        \ },
    \ },
\})
lua require('telescope').load_extension('ui-select')

lua require('telescope').load_extension "file_browser"
nnoremap <C-f> <cmd>Telescope find_files<cr>
nnoremap <leader>f <cmd>Telescope file_browser<cr>

"nvim-tree.lua
lua require("nvim-tree").setup()
nnoremap <leader>t <cmd>NvimTreeFocus<cr>

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

let g:lightline={ 'colorscheme': 'PaperColor', 'enable': { 'tabline' : 0 } }

"Set the tab character to input multiple spaces, instead of an tab
set tabstop=8 softtabstop=4 expandtab shiftwidth=4 smarttab shiftround

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

"Firenvim settings
if exists('g:started_by_firenvim')
    set laststatus=0
    set guifont=monospace:h11
    nnoremap <Esc><Esc> :call firenvim#focus_page()<CR>
endif

highlight CoolLineIndentation1 guifg=#a5c8e4
highlight CoolLineIndentation2 guifg=#9edbbd
highlight CoolLineIndentation3 guifg=#d3d683
