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

noremap H ^
noremap L g_

noremap <C-S-h> b
noremap <C-S-l> e

imap <C-S-h> <ESC>hvb
imap <C-S-l> <ESC>lve

imap <C-A-h> <ESC>v^
imap <C-A-l> <ESC>vg_

vmap ( S)

noremap <C-H> b
noremap <C-L> e

imap <C-BS> <ESC>dbxa

"Personal thing for me in jekyll blogging
nmap <C-k> i{% image_link %}<ESC>hhh<C-S-V>li width:90<ESC>

"Switch tabs
map <C-Tab> gt
map <C-S-Tab> gT
imap <C-Tab> <ESC>gt
imap <C-S-Tab> <ESC>gT
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
Plug 'lewis6991/gitsigns.nvim'
Plug 'tpope/vim-fugitive'
Plug 'p00f/nvim-ts-rainbow'
Plug 'williamboman/mason.nvim'
Plug 'seblj/nvim-echo-diagnostics'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'matze/vim-move'
Plug 'tommcdo/vim-lion'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/nvim-cmp'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'lewis6991/hover.nvim'
Plug 'folke/tokyonight.nvim'
Plug 'https://gitlab.com/yorickpeterse/nvim-dd.git'
Plug 'junegunn/vim-plug'
call plug#end()

lua require("echo-diagnostics").setup()
set updatetime=300
autocmd CursorHold * lua require('echo-diagnostics').echo_line_diagnostic()

"gitsigns
lua <<EOF
    require('gitsigns').setup({
    signs = {
        add          = {hl = 'GitSignsAdd'   , text = '+', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'},
        change       = {hl = 'GitSignsChange', text = '~', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
        delete       = {hl = 'GitSignsDelete', text = '_', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
        topdelete    = {hl = 'GitSignsDelete', text = '‾', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
        changedelete = {hl = 'GitSignsChange', text = '~', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
    },
    })
EOF

"Hey diagnostics, slow down a bit!
lua require('dd').setup({timeout = 500})

"mason.nvim
lua require("mason").setup()
lua require("mason-lspconfig").setup()

"neovim-lspconfig
lua require('lspconfig').bashls.setup({})
lua require('lspconfig').clangd.setup({})
lua require('lspconfig').cmake.setup({})
lua require('lspconfig').cssls.setup({})
lua require('lspconfig').html.setup({})
lua require('lspconfig').sumneko_lua.setup({})
lua require('lspconfig').rust_analyzer.setup({})
lua require('lspconfig').vimls.setup({})

let g:lsc_auto_map = 1

"nvim-cmp
set completeopt=menu,menuone,noselect

lua <<EOF
    local cmp = require('cmp')
    cmp.setup({
        snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        end,
        },
       mapping = cmp.mapping.preset.insert({
           ['<C-b>'] = cmp.mapping.scroll_docs(-4),
           ['<C-f>'] = cmp.mapping.scroll_docs(4),
           ['<C-Space>'] = cmp.mapping.complete(),
           ['<C-e>'] = cmp.mapping.abort(),
           ['<CR>'] = cmp.mapping.confirm({ select = true }),
       }),
       sources = cmp.config.sources({
           { name = 'nvim_lsp' },
           { name = 'luasnip' },
           { name = 'buffer' },
           { name = 'path' },
        })
    })

    local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
EOF

" Can you possibly guess that I *hate* on-screen linters?
lua <<EOF
    vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
        vim.lsp.diagnostic.on_publish_diagnostics, {
            virtual_text = false,
        }
    )
EOF

"hover.nvim
lua <<EOF
    local hover = require("hover")
    hover.setup({
        init = function()
            require("hover.providers.lsp")
        end,
        preview_opts = {
            border = nil
        },

        preview_window = false,
        title = true,
    })

    vim.keymap.set("n", "<leader>d", hover.hover, {desc = "hover.nvim"})
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
    \             colors = {"#0675d4",
    \                       "#cc6600",
    \                       "#00944b",
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
    set guifont=JetBrainsMono\ Nerd\ Font\ Mono:h11
    nnoremap <Esc><Esc> :call firenvim#focus_page()<CR>
endif

highlight CoolLineIndentation1 guifg=#99bfde
highlight CoolLineIndentation2 guifg=#8ccfae
highlight CoolLineIndentation3 guifg=#c6c975
