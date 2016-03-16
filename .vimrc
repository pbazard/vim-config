se nu

set wildmenu
set wildmode=list:longest,full

# Use spacebar as mapleader
let mapleader=" "

# :E or :Explore is a native alternative to NERDTree
# Press :i to toggle the appearance of the tree
# Commands:
# d creates a new directory
# % creates and opens a new file
# D deletes a directory or file
# R renames a file
# o opens the file in a horizontal split
# v opens the file in a vertical split
# https://robots.thoughtbot.com/replacing-nerdtree-with-ctrl-p
# https://blog.mozhu.info/vimmers-you-dont-need-nerdtree-18f627b561c3#.3qejixiku
let g:netrw_liststyle=3
map <leader>k :E<cr>

" Basic status line
"set laststatus=2
"set statusline=\ %f%m%r%h%w\ %=%({%{&ff}\|%{(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\")}%k\|%Y}%)\ %([%l,%v][%p%%]\ %)

" statusline
" format markers:
"   %t File name (tail) of file in the buffer
"   %m Modified flag, text is " [+]"; " [-]" if 'modifiable' is off.
"   %r Readonly flag, text is " [RO]".
"   %y Type of file in the buffer, e.g., " [vim]".
"   %= Separation point between left and right aligned items.
"   %l Line number.
"   %L Number of lines in buffer.
"   %c Column number.
"   %P percentage through buffer
set statusline=%t\ %m%r%y%=(ascii=\%03.3b,hex=\%02.2B)\ (%l/%L,%c)\ (%P)
set laststatus=2
" change highlighting based on mode
if version >= 700
  highlight statusLine cterm=bold ctermfg=black ctermbg=red
  au InsertLeave * highlight StatusLine cterm=bold ctermfg=black ctermbg=red
  au InsertEnter * highlight StatusLine cterm=bold ctermfg=black ctermbg=green
endif
