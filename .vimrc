execute pathogen#infect()
syntax on
filetype plugin indent on
autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4
set nocompatible

" No backup ugly files
set nobackup
set nowritebackup
set noswapfile

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

let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'

"GO
set number
let g:go_disable_autoinstall = 0

" Highlight
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

" Simbolos vi airline
let g:airline_powerline_fonts = 1

"NeoComplete
let g:neocomplete#enable_at_startup = 1

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


