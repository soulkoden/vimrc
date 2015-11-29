set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Посмотреть рейтинги http://vimawesome.com/?q=sql
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-scripts/Align'
Plugin 'vim-scripts/SQLUtilities'
Plugin 'vim-scripts/sqlserver.vim'
Plugin 'StanAngeloff/php.vim'
Plugin 'groenewege/vim-less'
Plugin 'mattn/emmet-vim'
Plugin 'othree/html5.vim'
Plugin 'fatih/vim-go'
Plugin 'peterhoeg/vim-qml' " Зачем? Сюда https://github.com/go-qml/qml

" npm install -g esformatter
" @https://github.com/millermedeiros/vim-esformatter
Plugin 'millermedeiros/esformatter' 

call vundle#end()
filetype plugin indent on

syntax on

set expandtab
set smarttab
set shiftwidth=4
set tabstop=4

autocmd BufNewFile,BufRead *.json set filetype=javascript

set modeline
set modelines=1

map <Tab> :NERDTreeToggle<CR>

function! PhpSyntaxOverride()
    hi! def link phpDocTags phpDefine
    hi! def link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
    autocmd!
    autocmd FileType php call PhpSyntaxOverride()
augroup END

nnoremap <silent> <leader>es :Esformatter<CR>
vnoremap <silent> <leader>es :EsformatterVisual<CR>
