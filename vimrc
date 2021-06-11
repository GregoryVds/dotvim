" Coloring
syntax on
set t_Co=256
set background=dark
colorscheme gruvbox
highlight Normal ctermbg=NONE

" Line num
set number
set relativenumber
set colorcolumn=80

" Tabs & ident
set shiftwidth=4
set tabstop=4
set expandtab

" Show ALL whitespaces 
set list

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_sh_shellcheck_args="-x"

let g:syntastic_sh_shellcheck_exec="/usr/bin/shellcheck"
let g:syntastic_c_cppcheck_exec="/usr/bin/cppcheck"

let g:hardtime_default_on = 0

let g:go_fmt_command = "goimports"

let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

let g:shfmt_fmt_on_save = 1


" let b:ale_linters = {'go': ['gopls']}
