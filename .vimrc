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
