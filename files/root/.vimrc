"
" basic ~/.vimrc 
"

version 8.0
          
autocmd!                
set nocompatible magic mls=0 nomodeline report=100 showmode 
set laststatus=2 autowrite bs=2 ai nobackup
set viminfo=!,'20,\"50    
                
set history=50 ruler expandtab tabstop=4 shiftwidth=4 formatoptions=tcrq 
set comments=n:>,n:%,n:\|,n:// 
set nowrap nodigraph noerrorbells visualbell incsearch 

set nospell showmatch nohls matchtime=2 nostartofline 
                        
set suffixes=~,.dvi,.tar,.bak,.gz,.tgz,.swp,.ps,.Z,.log,.aux,.bbl,.blg,.ent,.rtf
set wildmenu           

let loaded_matchparen = 1

filetype plugin indent on 
filetype plugin on

autocmd BufRead,BufNewFile .vimrc.*                 set ft=vim
autocmd BufRead,BufNewFile *.cf                     set ft=cf3 foldlevel=99
autocmd BufRead,BufNewFile /etc/bind/named*         set ft=named
autocmd BufRead,BufNewFile /etc/nginx/nginx.conf    set ft=nginx
autocmd BufRead,BufNewFile /etc/nginx/sites-*       set ft=nginx

set statusline=%<%F%y%r%m%=[%l,%c%V]\ [%P\ of\ %L]\ 

map <F7> :set invnumber<CR>
map <F8> :set invhls<CR>
map <Space> <C-W><C-W>
map n nzz
map N Nzz
map _ gqip

set background=light
colorscheme delek

"hi SpellBad   ctermfg=DarkRed   ctermbg=Grey
"hi SpellCap   ctermfg=DarkBlue  ctermbg=Grey 

":if $TERM == "rxvt"
"        hi Statement    ctermfg=DarkRed  
"        hi search       cterm=underline  ctermfg=Black  ctermbg=Brown
":endif


syntax enable
