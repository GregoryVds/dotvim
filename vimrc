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

let g:hardtime_default_on = 0

let g:go_fmt_command = "goimports"

let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

let g:shfmt_fmt_on_save = 1

" Function to set YCM Python interpreter based on pipenv
function! SetYCMInterpreter()
  " Check if Pipfile exists in the current directory
  if filereadable('./Pipfile')
    " Get the virtualenv path
    let l:venv_path = system('pipenv --venv')
    " Remove trailing whitespaces
    let l:venv_path = substitute(l:venv_path, '\n\+$', '', '')
    " Set the YCM Python interpreter to use the pipenv virtualenv
    let g:ycm_server_python_interpreter = l:venv_path . '/bin/python'
  endif
endfunction

" Automatically set the YCM Python interpreter when entering a Python buffer
autocmd FileType python call SetYCMInterpreter()

" Function to get Pipenv virtual environment paths
function! GetPipEnvExecPath(executable)
  return system('pipenv --venv')[:-2] . '/bin/' . a:executable
endfunction

" ALE Python settings to use Pipenv
let g:ale_python_pylint_executable = GetPipEnvExecPath('pylint')
let g:ale_python_black_executable = GetPipEnvExecPath('black')
let g:ale_fix_on_save = 1
let g:ale_fixers = {
\   'python': ['black'],
\}

