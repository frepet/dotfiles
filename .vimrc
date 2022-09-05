set nocompatible

"" ALE setup
let g:ale_python_pyflakes_executable = 'pylint'
let b:ale_python_flake8_options = '--max-line-length=120'
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 1
let g:ale_lint_on_enter = 0

let b:ale_fixers = ['clang-format']

" Bind F8 to fixing problems with ALE
nmap <F8> <Plug>(ale_fix)


" Automatic install of plugin manager
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Vim-plug section
call plug#begin('~/.vim/plugged')


" Ale for linting
Plug 'dense-analysis/ale'

" Airline
Plug 'vim-airline/vim-airline'
call plug#end()

" Enable Airline
let g:airline#extensions#tabline#enabled = 1

" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" Add recursive path
set path+=**

" Add linenumbers
set number

" Mark the 120'th row
set colorcolumn=120

" Dark background
set bg=dark

" Wildmenu shows tab-completions
set wildmenu

" Display current row and column
set cursorcolumn
set cursorline
set t_Co=256
highlight CursorColumn ctermbg=238
highlight CursorLine ctermbg=238 cterm=none

" Enable mouse movement
set mouse=a

" Enable clipboard outside of vim
set clipboard=unnamedplus

" Just fix tabs instead of spaces
set autoindent
set noexpandtab
set tabstop=4
set shiftwidth=4
