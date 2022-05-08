set noerrorbells

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set cindent
set cino=(1s

set nowrap
set incsearch
set number
set relativenumber
set hidden
set scrolloff=8
set signcolumn=yes
set ignorecase
set smartcase

set colorcolumn=80

let mapleader = " "

call plug#begin('~/.config/nvim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Chiel92/vim-autoformat'
Plug 'joshdick/onedark.vim'
Plug 'tpope/vim-fugitive'
Plug 'lambdalisue/fern.vim'

call plug#end()

colorscheme onedark

inoremap jk <esc>

nnoremap <leader>p :Autoformat<CR>

nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" use tab and shift tab to navigate auto completion menu
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" fern.vim options
let g:fern#drawer_width = 40
let g:fern#drawer_keep = v:true
nnoremap <leader>f :Fern . -drawer -toggle<CR>

function! s:init_fern() abort
    nnoremap <Plug>(fern-close-drawer) :<C-u>FernDo close -drawer -stay<CR>

    nmap <buffer><silent> <Plug>(fern-action-open-and-close)
      \ <Plug>(fern-action-open)
      \ <Plug>(fern-close-drawer)

    nmap <buffer><silent><expr>
        \ <Plug>(fern-action-open-and-close-or-expand)
        \ fern#smart#leaf(
        \   "\<Plug>(fern-action-open-and-close)",
        \   "\<Plug>(fern-action-expand)",
        \ )

    nmap <buffer><silent> <Plug>(fern-action-open-and-close:left)
      \ <Plug>(fern-action-open:left)
      \ <Plug>(fern-close-drawer)

    nmap <buffer><silent> <Plug>(fern-action-open-and-close:right)
      \ <Plug>(fern-action-open:right)
      \ <Plug>(fern-close-drawer)

    nmap <buffer><silent> <Plug>(fern-action-open-and-close:tabedit)
      \ <Plug>(fern-action-open:tabedit)gT
      \ <Plug>(fern-close-drawer)gt

    nmap <buffer> H <Plug>(fern-action-hidden:toggle)

    nmap <buffer> l <Plug>(fern-action-open-and-close-or-expand)
    nmap <buffer> s <Plug>(fern-action-open-and-close:left) 
    nmap <buffer> S <Plug>(fern-action-open-and-close:right)
    nmap <buffer> t <Plug>(fern-action-open-and-close:tabedit)

    nmap <buffer> m <Plug>(fern-action-mark:toggle)
    nmap <buffer> D <Plug>(fern-action-remove)
endfunction

augroup fern-custom
    autocmd! *
    autocmd FileType fern call s:init_fern()
augroup END
