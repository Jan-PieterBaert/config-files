set number
colorscheme Tomorrow-Night-Eighties

" Updating: PlugUpdate
" Remove unneeded: PlugClean
" Install new: PlugInstall

" Start of pluginlist
call plug#begin('~/.config/nvim/plugs')
" Git highlighting
Plug 'airblade/vim-gitgutter'
" Pretty statusline
Plug 'vim-airline/vim-airline'
" completions
Plug '/usr/bin/fzf'
Plug 'junegunn/fzf.vim'
" Completions
Plug 'Valloric/YouCompleteMe'
" Formatting code
Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
Plug 'google/vim-glaive'
" Auto pair things like quotes and paratheses
Plug 'jiangmiao/auto-pairs'
" Easy commenting
Plug 'tomtom/tcomment_vim'
" Jumping using `\\w` and `\\b``
Plug 'easymotion/vim-easymotion'

Plug 'Yggdroot/indentLine'

Plug 'tpope/vim-surround'
Plug 'vim-syntastic/syntastic'
Plug 'flazz/vim-colorschemes'
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
	highlight ExtraWhitespace ctermbg=red guibg=red
	match ExtraWhitespace /\s\+$/
	autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
	autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
	autocmd InsertLeave * match ExtraWhitespace /\s\+$/
	autocmd BufWinLeave * call clearmatches()

command! -range -nargs=* Reloadsettings source ~/.vimrc

map J :tabnext<CR>
map K :tabprev<CR>
map <C-t> :tabnew<CR>
map <C-w> :tabclose<CR>
map <C-o> :tabedit

set mouse=a
set showmatch

let g:indentLine_enabled = 1
let g:indentLine_color_term = 74

map <F2> :echo 'Current date is ' . strftime('%H:%M:%S %a %d/%m/%y')<CR>
