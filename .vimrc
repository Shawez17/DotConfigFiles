" Vim Config:
" lets try
" Automatically load ycm_extra_conf.py without asking
" Mouse support
let g:alduin_Shout_Fire_Breath = 1
set mouse=a
" set spell
set ignorecase
" vim bindings
" visual mode
" Open PDF with same basename as current file
" nnoremap <leader>op :silent !sioyek %:r.pdf<CR>
nnoremap <leader>op :!open -a /Applications/sioyek.app/ %:r.pdf<CR>
" compile vim+latex
nnoremap <leader>vl :!latexmk -pdf %<CR> 
" insert mode
nnoremap <leader>day :r !date <CR>
" Spell check Ctrl+L to corrcet
"setlocal spell
"set spelllang=en_gb
"inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u


" Enable line numbers
" Yank only to macOS clipboard
nnoremap y "+y
nnoremap yy "+yy
nnoremap Y "+Y
vnoremap y "+y
set backupcopy=yes
set number
set relativenumber

" Basic UI tweaks

" set noshowmode
set showcmd
" set wrap
set guifont=ArialNarrow12



" Syntax and filetype support
" nnoremap <C-t> :NERDTreeToggle <CR>
syntax on
filetype plugin indent on
inoremap [ []<Left>
inoremap ( ()<Left>
inoremap { {}<Left>
inoremap $ $$<Left>
inoremap ' ''<Left>
inoremap " ""<Left> 

" Enable auto indentation
set autoindent
set smartindent
set tabstop=4        " width of tab character
set shiftwidth=4     " width for autoindent
set expandtab        " use spaces instead of tabs


" Override/Load for specific file

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

"    augroup latex_template
"      autocmd!
"      autocmd BufNewFile *.tex 0r ~/.vim/templates/template.tex macros.tex preamble.tex letterfonts.tex 
"    augroup END
" some problem
augroup js_braces
  autocmd!
  autocmd FileType javascript,css,c,php,cpp,arduino,rs inoremap { {<CR>}<Esc>O
augroup END

autocmd BufNewFile,BufReadPost *.md set filetype=markdown

highlight MyAngleHighlight ctermfg=red guifg=red
autocmd BufEnter,BufWinEnter,BufFilePost * call matchadd('MyAngleHighlight', '<div>\zs\_.\{-}\ze</div>')


" ----------------------
" Plugin Manager: vim-plug
" Define cursor color (Gruvbox orange example)

" Apply cursor in all normal modes as a block
set guicursor=n-v-c:block-Cursor
let g:tex_flavor='latex'
let g:vimtex_view_method='sioyek'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdm'

let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsSnippetDirectories=['ultiSnips']
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'



" ----------------------
call plug#begin('~/.vim/plugged')
"Plug 'lervag/vimtex'
"Enhanced Python syntax
"Plug 'ycm-core/YouCompleteMe'
"Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'sirver/ultisnips'
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

Plug 'vim-airline/vim-airline' "showmode thingy
Plug 'vim-airline/vim-airline-themes'
Plug 'dylanaraps/wal' "fantastically binds vim with pywal
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
let g:tex_flavor='latex'
let g:vimtex_view_method='sioyek'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdm'

" let g:vim_markdown_folding_level = 1
Plug 'maxmellon/vim-jsx-pretty'
Plug 'AlessandroYorba/Alduin'
"Optional: Color scheme (white-on-black)
call plug#end()
filetype plugin indent on
let g:indentLine_color_term = 220
let g:indentLine_color_gui = '#FFD580'  " mustard yellow
" set colorscheme
set background=light
"colorscheme dracula
syntax enable
" highlight Cursor ctermfg=NONE ctermbg=Blue
" highlight Cursor guifg=#ffffff guibg=#e4a7ff

" ----------------------
" Python-specific settings
let g:python3_host_prog = '/usr/bin/python3'
autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=4
