let mapleader = "\<Space>"        
                                    
" ctrlp config ignore
set wildignore+=*/tmp/*,*.pdf,*.jpg,*.png,*/test/*,*.svg,*/node_modules/*
let g:ctrlp_custom_ignore = "\v[\/]\.(git|hg|svn)$"

let g:acp_enableAtStartup = 0
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = "\*ku\*"
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS

" remove trailing whitespace on file write
autocmd FileType c,cpp,java,php,ruby,python,css,html,javascript,slim,haml,erb,yaml autocmd BufWritePre <buffer> %s/\s\+$//e

colors zenburn

set scrolloff=3

" encoding
if has("multi_byte")
    if &termencoding == ""
        let &termencoding = &encoding
    endif
    set encoding=utf-8
    setglobal fileencoding=utf-8
    "setglobal bomb
    set fileencodings=ucs-bom,utf-8,latin1
endif

set nocompatible
set backspace=indent,eol,start

" indent management
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set cindent

set selectmode=mouse
set cmdheight=1
set number
set relativenumber

set colorcolumn=100

let g:NERDCustomDelimiters = { "ruby": { "left": "#" } }
let g:NERDDefaultAlign = "left"
let g:NERDSpaceDelims = 1
let g:NERDTrimTrailingWhitespace = 1

" vim option for airline toggle
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme="luna"

set nocp
filetype plugin on

imap ;; <Esc>
map ;; <Esc>

imap <A-i> <Tab><Tab><Tab><Tab>
inoremap        (  ()<Left>
inoremap <expr> )  strpart(getline("."), col(".")-1, 1) == ")" ? "\<Right>" : ")"
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}
map <Leader>u :NERDTreeToggle<CR>
map <Leader>i :TagbarToggle<CR>
nnoremap <Leader>o :CtrlP<CR> " open browser file

"Remove all trailing whitespace by pressing F5
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

" tab
noremap <Leader>t :new<CR>
noremap <Leader>x :bd<CR>
noremap <Leader>s :w<CR>
noremap <Leader>q :wq<CR>
noremap <Leader><ENTER> i<CR>
map <Leader><right> :bnext<CR> " next tab 
map <Leader><left> :bprev<CR> " prev tab

" simple commenting shortcut //
map <a-c> :s/^/\/\//<CR>
map <a-x> :s/^\/\///<CR>

" highlight actual line
set cursorline
highlight CursorLine guibg=#001000
highlight Folded ctermbg=59

" hide some suffix
set suffixes=.jpg,.png,.jpeg,.gif,.bak,~,.swp,.swo,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc,.pyc,.pyo

" auto reload file if change
set autoread

set lazyredraw

" Vim UI
set hlsearch
set listchars=tab:%\ ,trail:.,extends:.,nbsp:.

vnoremap < <gv
vnoremap > >gv
" search selected text
vnoremap // y/\V<C-R>"<CR>

" code folding option
set foldenable

" Vundle config
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

" Vundle Plugin
Plugin 'VundleVim/Vundle.vim'
Plugin 'molokai'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'spf13/vim-autoclose'
Plugin 'scrooloose/nerdcommenter'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'lucapette/vim-ruby-doc'
Plugin 'Shougo/neocomplcache.vim'
Plugin 'vimwiki/vimwiki'
Plugin 'posva/vim-vue'
Plugin 'slim-template/vim-slim'
Plugin 'iamcco/markdown-preview.vim'
call vundle#end()  

filetype off
filetype plugin indent on     " required! 
syntax on

set foldmethod=syntax
set foldnestmax=4
set foldlevelstart=1
