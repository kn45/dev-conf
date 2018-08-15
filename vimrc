hi LineNr cterm=NONE ctermbg=black ctermfg=cyan guibg=darkred guifg=white
syntax on
set autoindent
set smartindent
set ts=4
set sw=4
set st=4
set softtabstop=4
set scrolloff=5
set foldenable
set foldmethod=indent
set foldlevel=10
set background=dark
set pastetoggle=<F9>
set cursorline
hi CursorLine cterm=NONE ctermbg=darkyellow ctermfg=NONE guibg=darkred guifg=white
"set cursorcolumn
hi CursorColumn cterm=NONE ctermbg=darkyellow ctermfg=NONE guibg=darkred guifg=white
hi Search cterm=NONE ctermbg=darkcyan ctermfg=NONE guibg=darkred guifg=white
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
set viminfo='100,<50,s10
au FileType scala  :setl et ts=2 sw=2 st=2|:let @/ = "  "
au FileType sh     :setl et ts=2 sw=2 st=2 softtabstop=2|:let @/ = "  "
au FileType sql    :setl et ts=4 sw=4 st=4|:let @/ = "    "
au FileType python :setl et ts=4 sw=4 st=4 softtabstop=4 textwidth=99 colorcolumn=+1
   \ |:let @/ = "^\\(    \\)\\+\\| \\+$"|hi ColorColumn cterm=NONE ctermbg=darkyellow ctermfg=NONE guibg=darkred guifg=white
au FileType pyrex :setl et ts=4 sw=4 st=4 textwidth=99 colorcolumn=+1
   \ |:let @/ = "^\\(    \\)\\+\\| \\+$"|hi ColorColumn cterm=NONE ctermbg=darkyellow ctermfg=NONE guibg=darkred guifg=white
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
set hls

set laststatus=2
set statusline=
set statusline+=%2*%-2F\ 
set statusline+=%5*%m
set statusline+=%6*%r
set statusline+=%3*%w
set statusline+=%=%4*[%{(&fenc!=''?&fenc:&enc)},%3*%{($bomb?'bom':'!bom')}%4*]
set statusline+=%1*[%{&ff}]
set statusline+=%7*%y
set statusline+=%5*\ %8(%4l,%)%-5(%c%V%)\ %5P
 
hi User1 term=NONE ctermbg=darkcyan ctermfg=NONE
hi User2 term=NONE ctermbg=darkcyan ctermfg=green
hi User3 term=NONE ctermbg=darkcyan ctermfg=darkblue
hi User4 term=NONE ctermbg=darkcyan ctermfg=blue
hi User5 term=NONE ctermbg=darkcyan ctermfg=darkred
hi User6 term=NONE ctermbg=darkcyan ctermfg=red
hi User7 term=NONE ctermbg=darkcyan ctermfg=darkgreen

