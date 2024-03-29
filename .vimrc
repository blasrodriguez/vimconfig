execute pathogen#infect()
syntax on
filetype plugin indent on
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins
autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4
set nocompatible

set autoindent

" No backup ugly filess
set nobackup
set nowritebackup
set noswapfile

let mapleader=" " "Space as leader key https://www.reddit.com/r/vim/wiki/the_leader_mechanism

" NERDTREE
" map — :NERDTreeToggle<CR>
" open/close nerdtree windowç
let g:NERDTreeHijackNetrw=0
map <C-n> :NERDTreeToggle<CR>
map <leader>r :NERDTreeFind<CR> "this is the key to jump to the nerdtree window from any other window
"autocmd BufWinEnter * NERDTreeFind
map ] :NERDTreeFind<CR> “ pressing this inside any open file in vim will jump to the nerdtree and highlight where that file is -> very useful when you have multiple files open at once
autocmd StdinReadPre * let s:std_in=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif "close vim if the only window left open is a NERDTree
let NERDTreeShowHidden=1

" Solarized theme
"let g:solarized_termcolors=256
"set t_Co=16
" set termguicolors
set background=dark
"set background=light

let g:solarized_diffmode="high"
colorscheme solarized

" Ignore case and smart case
set ignorecase
set smartcase

" Highlight hidden chars
set list listchars=tab:\ \ ,trail:·

" If multiopen then autoreadonly
set autoread

" Don't show intro screen
set shortmess+=I

set path+=**
set wildmenu

" Varios ficheros abiertos a la vez
set hidden

"Airline
let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'
let g:airline#extensions#tabline#enabled = 1

" Numeros de linea
set number

"GO
" set number
" let g:go_disable_autoinstall = 0
"
" Ruby
"
autocmd FileType javascript setlocal ts=2 sts=2 sw=2
autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType eruby setlocal expandtab shiftwidth=2 tabstop=2

" Highlight
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

" Simbolos vi airline
let g:airline_powerline_fonts = 1

"NeoComplete
"let g:neocomplete#enable_at_startup = 1

"Tag bar
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }
nmap <F8> :TagbarToggle<CR>

" Map search & replace
":nnoremap <Leader>s :%s/\<<C-r><C-w>\>/
:nnoremap <Leader>s :%s/\<<C-r><C-w>\>//g<Left><Left>

" YAML 2 spaces tab
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" Syntax for Jenkinsfile (jenkins pipeline)
autocmd BufNewFile,BufRead *Jenkinsfile set syntax=groovy
autocmd BufNewFile,BufRead *Jenkinsfile setlocal expandtab tabstop=4 shiftwidth=4
autocmd BufNewFile,BufRead *.groovy set syntax=groovy
autocmd BufNewFile,BufRead *.groovy setlocal expandtab tabstop=4 shiftwidth=4


" Folding por sintax
:set foldmethod=syntax

" Paste keybinding
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>

" Highlight search results
:set hlsearch

" FZF
set rtp+=/usr/bin/fzf
nnoremap <silent> <C-z> :FZF<CR>

" Unfold by default
set foldlevel=99

" Buffer cycling
:nnoremap <Tab> :bnext<CR>
:nnoremap <S-Tab> :bprevious<CR>

" Grep https://thoughtbot.com/blog/faster-grepping-in-vim
" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" Better Folding
function! NeatFoldText() "{{{2
  let line = ' ' . substitute(getline(v:foldstart), '^\s*"\?\s*\|\s*"\?\s*{{' . '{\d*\s*', '', 'g') . ' '
  let lines_count = v:foldend - v:foldstart + 1
  let lines_count_text = '| ' . printf("%10s", lines_count . ' lines') . ' |'
  let foldchar = matchstr(&fillchars, 'fold:\zs.')
  let foldtextstart = strpart('+' . repeat(foldchar, v:foldlevel*2) . line, 0, (winwidth(0)*2)/3)
  let foldtextend = lines_count_text . repeat(foldchar, 8)
  let foldtextlength = strlen(substitute(foldtextstart . foldtextend, '.', 'x', 'g')) + &foldcolumn
  return foldtextstart . repeat(foldchar, winwidth(0)-foldtextlength) . foldtextend
endfunction
set foldtext=NeatFoldText()
" }}}2
"
" terraform
"let g:terraform_fmt_on_save=1
"let g:terraform_fold_sections=1
"let g:terraform_align=1

" Web Development
autocmd BufRead,BufNewFile *.htm,*.html setlocal tabstop=2 shiftwidth=2 softtabstop=2

" FZF
nnoremap <C-p> :<C-u>FZF<CR>

" Copy paste between terminals
set clipboard=unnamedplus

" Rust
 let g:rustfmt_autosave = 1

call plug#begin()
Plug 'nordtheme/vim'
call plug#end()

:colorscheme nord
