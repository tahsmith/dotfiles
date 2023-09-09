" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Declare the list of plugins.
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'github/copilot.vim', {'branch': 'release'}

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

let g:coc_global_extensions = ['coc-json', 'coc-git', 'coc-pyright']
