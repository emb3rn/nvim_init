set ts=4 sw=4
set backspace=indent,eol,start
set mouse=a
set timeoutlen=1000
set ttimeoutlen=5
:syntax off

call plug#begin()
Plug 'neoclide/coc.nvim'
Plug 'vim-airline/vim-airline'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'tmsvg/pear-tree'
Plug 'vim-airline/vim-airline-themes'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug '907th/vim-auto-save'
Plug 'xianzhon/vim-code-runner'
call plug#end()

"let g:python_highlight_all = 1

set bg=dark
colorscheme gruvbox  

let g:pear_tree_repeatable_expand=0

let g:airline_powerline_fonts = 1
let g:airline_theme='base16_gruvbox_dark_hard'
let g:airline_section_c='%F'

let g:auto_save = 0
augroup ft_python
  au!
  au FileType python let b:auto_save = 1
augroup END

let g:CodeRunnerCommandMap = {
      \ 'python' : 'python3 $fileName'
      \}

nmap <silent><F1> <plug>CodeRunner

"inoremap <silent><expr> <CR-TAB>
"      \ coc#pum#visible() ? coc#pum#next(1) :
"      \ CheckBackspace() ? '\<Tab>' :
"      \ coc#refresh()
"inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

inoremap <silent><expr> <TAB> coc#pum#visible() ? coc#pum#confirm()

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

