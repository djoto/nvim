packloadall
" packadd YouCompleteMe
packadd vim-github-dark

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Force 256 colors on the terminal
" set t_Co=256

" Turn syntax highlighting on.
syntax on
colorscheme ghdark
let g:gh_color = "soft"


" Add numbers to each line on the left-hand side.
set number
" Set line numbers fg and bg colors:
" highlight LineNr ctermfg=white ctermbg=234

" Highlight cursor line underneath the cursor horizontally.
set cursorline
" almost black background for cursos line
" hi CursorLine cterm=NONE ctermbg=234 ctermfg=NONE


" Netrw file explorer configuration:
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 3
let g:netrw_altv = 1
let g:netrw_winsize = 25
augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Vexplore
augroup END


" Asynchronous Lint Engine: https://github.com/dense-analysis/ale
let g:ale_linters = {'python' : ['flake8']}
let g:ale_linters_explicit = 1
let g:ale_virtualtext_cursor = 'disabled'
" Ignore some error warnings: https://pycodestyle.pycqa.org/en/latest/intro.html#error-codes
" E303: too many blank lines (#)
" E226: missing whitespace around arithmetic operator
" let g:ale_python_pycodestyle_options = '--max-line-length=100 --ignore=E226'
" E225: missing whitespace around operator
" B015: Result of comparison is not used. This line doesn't do anything. Did you intend to prepend it with assert?
let g:ale_python_flake8_options = '--max-line-length=100 --extend-ignore=B015'
let g:ale_fixers = {'*': ['remove_trailing_lines', 'trim_whitespace']}  " , 'python': ['autopep8', 'autoflake']}
let g:ale_fix_on_save = 1


" YouCompleteMe configuration:
" YCM will auto-close the 'preview' window after the user leaves insert mode:
" let g:ycm_autoclose_preview_window_after_insertion = 1
" YCM will auto-close the 'preview' window after the user accepts the offered completion string:
" let g:ycm_autoclose_preview_window_after_completion = 1

" let g:python3_host_prog = '/usr/bin/python3'
