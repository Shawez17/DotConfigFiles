" ----------------------
" Vim Config: Minimal Python Dev
" ----------------------
" Automatically load ycm_extra_conf.py without asking
let g:ycm_confirm_extra_conf = 0
" Enable line numbers
set number
set backupcopy=yes
set relativenumber
set ignorecase
" Basic UI tweaks
set showmode
set showcmd
set wrap
set foldmethod=syntax
" Syntax and filetype support
"
"
nnoremap <C-t> :NERDTreeToggle <CR>
syntax on
filetype plugin indent on
inoremap [ []<Left>
inoremap ( ()<Left>
inoremap { {}<Left>
inoremap < <><Left>
inoremap ' ''<Left>
inoremap " ""<Left> 
inoremap $ $$<Left>
" Enable auto indentation
set autoindent
set smartindent
set tabstop=4        " width of tab character
set shiftwidth=4     " width for autoindent
set expandtab        " use spaces instead of tabs
" Line number colors (black & white theme)
" highlight LineNr ctermfg=Grey guifg=#444444
highlight CursorLineNr ctermfg=White guifg=White
" highlight CursorLine ctermbg=Black guibg=Black

"override/Load for specific file

augroup css_template
  autocmd!
  autocmd BufNewFile *.css 0r ~/.vim/templates/css_template.css
augroup END
augroup html_template
  autocmd!
  autocmd BufNewFile *.html 0r ~/.vim/templates/html_template.html
augroup END

augroup bash_var
  autocmd!
  autocmd FileType bash inoremap { <Esc>
augroup END

augroup latex_template
  autocmd!
  autocmd BufNewFile *.tex 0r ~/.vim/templates/latex_template.tex
augroup END
augroup js_braces
  autocmd!
  autocmd FileType javascript,css inoremap { {<CR>}<Esc>O
augroup END
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" highlight MyAngleHighlight ctermfg=red guifg=red
" "autocmd BufEnter,BufWinEnter,BufFilePost * call matchadd('MyAngleHighlight', '<[^>]*>')

highlight MyAngleHighlight ctermfg=red guifg=red
autocmd BufEnter,BufWinEnter,BufFilePost * call matchadd('MyAngleHighlight', '<div>\zs\_.\{-}\ze</div>')
" ----------------------
" Plugin Manager: vim-plug
" ----------------------
call plug#begin('~/.vim/plugged')
"Plug 'lervag/vimtex'
"Enhnced Python syntax
"Plug 'ycm-core/YouCompleteMe'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'StanAngeloff/php.vim'
Plug 'Yggdroot/hiPairs'
Plug 'vim-python/python-syntax'
Plug 'mattn/emmet-vim'
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'ap/vim-css-color'         " Show color codes visually
Plug 'lervag/vimtex'
Plug 'plasticboy/vim-markdown'
Plug 'maxmellon/vim-jsx-pretty'
"Optional: Color scheme (white-on-black)
Plug 'gruvbox-community/gruvbox'
call plug#end()
filetype plugin indent on
let g:indentLine_color_term = 220
let g:indentLine_color_gui = '#FFD580'  " mustard yellow

"let g: vimtex_quickfix_mode=0
"set conceallevel=1
"let g: tex_conceal='abdmg'
" Set color scheme
colorscheme gruvbox
" ----------------------
" Python-specific settings
" ----------------------
let g:python3_host_prog = '/usr/bin/python3'
autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=4
