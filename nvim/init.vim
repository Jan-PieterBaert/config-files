set number
colorscheme Tomorrow-Night-Eighties
set termguicolors


" Updating: PlugUpdate
" Remove unneeded: PlugClean
" Install new: PlugInstall

" Start of pluginlist
call plug#begin('~/.config/nvim/plugs')
	" Git highlighting
	Plug 'airblade/vim-gitgutter'

    " Completions
    Plug 'Shougo/deoplete.nvim'

    " Syntax checking
    Plug 'dense-analysis/ale'

    " " Latex in vim
    " Plug 'lervag/vimtex'

    " Pretty statusline
	Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " Fuzzy file finder
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'

	" Formatting code
	Plug 'google/vim-maktaba'
	Plug 'google/vim-codefmt'
	Plug 'google/vim-glaive'

	" Auto pair things like quotes and paratheses
	Plug 'jiangmiao/auto-pairs'

	" Easy commenting
	Plug 'tomtom/tcomment_vim'

    " Nerdtree
    Plug 'preservim/nerdtree'

	" Jumping using `\\w` and `\\b``
	Plug 'easymotion/vim-easymotion'

	Plug 'Yggdroot/indentLine'
    Plug 'dense-analysis/ale'
	Plug 'tpope/vim-surround'
	Plug 'vim-syntastic/syntastic'
	Plug 'flazz/vim-colorschemes'

	" Clojure
	Plug 'guns/vim-clojure-highlight'
	Plug 'guns/vim-clojure-static'

	" Python
	Plug 'nvie/vim-flake8'
    Plug 'davidhalter/jedi-vim'

    " C
    Plug 'wolfgangmehner/c.vim'

    " Prolog
    Plug 'soli/prolog-vim'

    " Csv
    Plug 'chrisbra/csv.vim'

    " TODO comments
    " see https://github.com/folke/todo-comments.nvim
    Plug 'nvim-lua/plenary.nvim'
    Plug 'folke/todo-comments.nvim'

    " Editorconfig plugin
    Plug 'editorconfig/editorconfig-vim'

    " Rainbow brackets
    Plug 'luochen1990/rainbow'

    " Fancy start screen
    Plug 'mhinz/vim-startify'

    " End of pluginlist
call plug#end()

" Link the system and vim clipboard
set clipboard=unnamedplus

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MULTIPURPOSE TAB KEY
" Indent if we're at the beginning of a line. Else, do completion.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
	function! InsertTabWrapper()
	    let col = col('.') - 1
	    if !col || getline('.')[col - 1] !~ '\k'
	        return "\<tab>"
	    else
	        return "\<c-n>"
	    endif
	endfunction
	inoremap <expr> <tab> InsertTabWrapper()
	inoremap <s-tab> <c-n>

" Highligh trailing whitespace
	highlight ExtraWhitespace ctermbg=red guibg=#f44336
	match ExtraWhitespace /\s\+$/
	autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
	autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
	autocmd InsertLeave * match ExtraWhitespace /\s\+$/
	autocmd BufWinLeave * call clearmatches()

function! s:find_git_root()
  return system('git rev-parse --show-toplevel 2> /dev/null')[:-2]
endfunction

command! ProjectFiles execute 'Files' s:find_git_root()
noremap :ProjectFiles<CR>

command! -bang -nargs=? -complete=dir Files
            \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

command! -range -nargs=* Reloadsettings source ~/.vimrc


map J :tabnext<CR>
map K :tabprev<CR>
map <C-t> :tabnew<CR>
map <C-o> :tabedit

nnoremap <leader>f :FormatCode<CR>
nnoremap <leader>w :write<CR>
nnoremap <leader>q :quit<CR>
nnoremap <leader>c :TComment<CR>
nnoremap <leader>r :RainbowToggle<CR>
nnoremap <leader>s :source ~/.vimrc<CR>
xnoremap f :fold<CR>

" Faster split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <leader>n :new<CR>
nnoremap <leader>h :new<CR>
nnoremap <leader>v :vnew<CR>
" Make splits more naturally
set splitright
set splitbelow

" add incidators for 80, 100 and 120 char width
set colorcolumn=80,100,120,140
set ignorecase
set smartcase
set mouse=a
set showmatch
set tabstop=4
set sts=4 sw=4
set expandtab
set complete+=k
" add english words to completion
	set dictionary+=/usr/share/dict/american-english
	set dictionary+=/usr/share/dict/british-english
	set dictionary+=/fast_files/git_repos/wordlists/english-all.txt
" add Dutch words to completion
	set dictionary+=/fast_files/git_repos/wordlists/dutch-all.txt
	inoremap <F12> <C-X><C-K>

set scrolloff=10

let g:rainbow_active = 1
let g:indentLine_enabled = 1
let g:indentLine_color_term = 74

" Airline configuration
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_theme='murmur'

map <F2> :echo 'Current date is ' . strftime('%H:%M:%S %a %d/%m/%y')<CR>

lua << EOF
  require("todo-comments").setup {
}
EOF
