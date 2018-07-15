"source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
"File
set nocompatible
set encoding=utf-8
set fileencodings=utf-8,cp950,big5
set nobackup
set autowrite
set autoread

"Display
syntax on
set autoindent
set tabstop=4
set shiftwidth=4
set noexpandtab
set ruler
set ru
set cursorline
set hlsearch
set showmatch
set showcmd
set mouse=a
nnoremap <C-L> :nohl<CR><C-L>
set t_Co=16
hi Comment ctermfg=lightblue
"colorscheme set
autocmd! BufRead,BufNewFile,BufEnter *.{c,cpp,h,javascript} call CSyntaxAfter()
function! CSyntaxAfter()
	syntax keyword Boolean true false NULL TRUE FALSE
	syntax keyword Statement stderr stdin stdout new this delete

	syntax match _Block "[{}]"
	syntax match _Bracket "[\[\]]"
	syntax match _Operator display "[-+&|<>=!\/~.,;:*%&^?()]"
	syntax region _Comment start="\/\*" end="\*\/"
	syntax match _Comment "\/\/.*$"

	hi _Block ctermfg=RED guifg=yellow1 guibg=RED gui=none
	hi link _Bracket Constant
	hi link _Operator Operator
	hi link _Comment Comment
endfunction
"colorscheme dibery

"Edit
set backspace=indent,eol,start
set incsearch
set mouse=a
set startofline
filetype plugin indent on
set omnifunc=syntaxcomplete#Complete
"set complete=longest
augroup vimrcEx
au!
set complete=.,w,b,u,t,i,d,k

"Others
set history=500
set ignorecase
set smartcase
set laststatus=2
set cmdheight=1
set number
set pastetoggle=<F12>
set statusline=%M%h%y\ %t\ %F\ %p%%\ %l/%L\ %=[%{&ff},%{&ft}]\ [a=\%03.3b]\ [h=\%02.2B]\ [%l,%v]
set wildmenu

"Shortcut
map <F2> :update<CR>
map <F3> :update<CR>:q<CR>
map <F4> :q!<CR>
map <F8> :!gdb %:r<CR><CR>
map <F9> :!rm %:r<CR>:!clear<CR>:!g++ %:t -o %:r -g -Wall<CR>:!time ./%:r<CR>
map <F10> :!time ./%:r<CR>
map <F11> :!rm -f core *.o %:r<CR><CR>
map <F12> :sh<CR>

"smart mapping for tab completion
function InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction 

inoremap <TAB> <C-R>=InsertTabWrapper()<CR>
