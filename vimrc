" Example Vim configuration
" Copy or symplink to ~/.vimrc or ~/_vimrc

set nocompatible						" Must come first because it changes other options.
filetype off
silent! call pathogen#runtime_append_all_bundles()

syntax enable								" Turn on systax highlighting.
filetype plugin indent on		" Turn on file type detection.

"runtime macros/matchit vim		" Load the matchit plugin.

set showcmd									" Display incomplete commands.
set showmode								" Display the mode you're in.

set backspace=indent,eol,start	" Intuitive backspacing.

set hidden									" Handle multiple buffer better.

set wildmenu								" Enhanced command line completion.
set wildmode=list:longest		" Complete files like a shell

set ignorecase							" Case-insensitive searching.
set smartcase								" But case-sensitive if expression contains capital letter.

set number									" Show line numbers.
set ruler										" Show cursor position.

set title										" Set the terminal's title.

set visualbell							" No beeping.

set nobackup								" Don't make a backup before overwriting a file.
set nowritebackup						" And again.
set directory=$HOME/.vim/tmp//,.	" Keep swap files in one location.

" UNCOMENT TO USE
set tabstop=2					" Global tab width.
set shiftwidth=2			" And again related.
"set expandtab				" Use spaces instead of tabs.

set laststatus=2			" Show the status line all the time.
"set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{fugitive#statusline()}%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P

let macvim_skip_colorscheme=1
colorscheme darkZ

" Get off my lawn
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

" Tab mappings
map <C-n> :NERDTreeToggle<CR>
"map <leader>tt :tabnew<cr>
"map <leader>te :tabedit
"map <leader>tc :tabcloser<cr>
"map <leader>to :tabonly<cr>
"map <leader>tn :tabnext<cr>
"map <leader>tp :tabprevious<cr>
"map <leader>tf :tabfirst<cr>
"map <leader>tl :tablast<cr>
"map <leader>tm :tabmove
