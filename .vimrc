" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Initialize plugin system
call plug#end()
map <C-p> :FZF<CR>
map <C-n> :NERDTreeToggle<CR>
map <leader>r :NERDTreeFind<CR>
nmap <F8> :TagbarToggle<CR>
colorscheme badwolf 
let g:NERDTreeMouseMode=3 
set mouse=a
if &term =~ '^screen'
    " tmux knows the extended mouse mode
    set ttymouse=xterm2
endif
if &diff
    colorscheme apprentice
endif
