call plug#begin()

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'ctrlpvim/ctrlp.vim'
" Avoid searching in node_modules.
let g:ctrlp_custom_ignore = 'node_modules'

" vim-better-whitespace - Highlight and remove trailing whitespaces.
Plug 'ntpeters/vim-better-whitespace'


" Auto complete for python
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1

Plug 'deoplete-plugins/deoplete-jedi'
" End Auto Complete for python

Plug 'w0rp/ale'

" Track the engine.
Plug 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" vim-autoclose - Close parentheses, brackets, etc.
Plug 'Townk/vim-autoclose'
Plug 'itchyny/lightline.vim'

"Plug 'sheerun/vim-polyglot'

"let g:lightline = {
"  \ 'colorscheme': 'onedark',
"  \ }

" List ends here. Plugins become visible to Vim after this call.
call plug#end()
syntax on
let g:ale_pattern_options = {
\ 'zulip\/.*\.py$': {'ale_linters': ['mypy','pyflakes']},
\}
"let g:ale_linters = {
"\   'python': ['pyflakes','mypy'],
"\}
let g:ale_fixers = {
\   'ruby': ['rubocop'],
\}
set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.

set shiftwidth=4    " Indents will have a width of 4

set softtabstop=4   " Sets the number of columns for a TAB
set mouse=a
set expandtab       " Expand TABs to spaces

set ignorecase
set smartcase
