" Plugins
" => vim-plug
"''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
call plug#begin('~/.vim/plugged')
" Automatically install missing plugins on startup
if !empty(filter(copy(g:plugs), '!isdirectory(v:val.dir)'))
  autocmd VimEnter * PlugInstall | q
endif

" IDE
Plug 'justinmk/vim-dirvish'
Plug 'kristijanhusak/vim-dirvish-git'
Plug 'jwilm/i3-vim-focus'
Plug 'tpope/vim-fugitive'
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'ervandew/supertab'
Plug 'terryma/vim-multiple-cursors'
Plug 'Yggdroot/indentLine'
Plug 'benmills/vimux'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-vinegar'
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'autozimu/LanguageClient-neovim', {'branch': 'next', 'do': 'bash install.sh'}

" Helpers
Plug 'christoomey/vim-tmux-navigator'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'farmergreg/vim-lastplace'
Plug 'ntpeters/vim-better-whitespace'
Plug 'kana/vim-arpeggio'
Plug 'junegunn/fzf', { 'dir': '~/.config/fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
let g:ale_completion_enabled = 1
Plug 'w0rp/ale'

" Theme
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'NLKNguyen/papercolor-theme'
Plug 'rakr/vim-one'

" Languages
Plug 'fatih/vim-go', {'for': ['go'], 'do': ':GoInstallBinaries'}
Plug 'nsf/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }
Plug 'benmills/vimux-golang'
Plug 'buoto/gotests-vim',{'for':['go']}
Plug 'rust-lang/rust.vim',{'for':['rs']}
"Plug 'racer-rust/vim-racer',{'for':['rs']}
Plug 'stevearc/vim-arduino', { 'for': 'ino' }
Plug 'davidhalter/jedi-vim', { 'for':'python'}
Plug 'pangloss/vim-javascript',{ 'for' : ['js']}
Plug 'elzr/vim-json',{ 'for' : ['json']}
Plug 'othree/html5.vim', { 'for':['html','htm'] }
Plug 'suoto/vim-hdl', {'for':['vhdl','hdl']}
Plug 'ledger/vim-ledger',{'for':['journal']}

call plug#end()

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let g:mapleader = ','

call arpeggio#load()

let g:python_host_prog = '/usr/bin/python2'
let g:python3_host_prog = '/usr/bin/python3'

set history=500
set clipboard=unnamed
set showmode
set lazyredraw
set hidden
set noswapfile
set autoread
set ignorecase
set smartcase
set magic
set showmatch
set nobackup
set nowritebackup
set noerrorbells
set updatetime=250

set colorcolumn=80

set number
set numberwidth=2
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

set splitright
set splitbelow
set mouse=a

set fileformat=unix
set whichwrap+=<,>,h,l
set wildignore+=.*,.git,*.swp,*pyc,*pyo,*.png,*.jpg,*.gif,*.ai,*.jpeg,*.psd,*.jar,*.zip,*.gem,log/**,tmp/**,coverage/**,rdoc/**,output_*,*.xpi,doc/**

set omnifunc=syntaxcomplete#Complete
set completeopt-=preview
set completeopt+=noinsert

" Enable filetype plugins
filetype plugin on
filetype indent on

nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>

" vv and vh to generate new faster plits
Arpeggio map sv :vsp<cr>
Arpeggio map sh :sp<cr>

" Some key rebindings
" Block mode is more usefull then visual
nnoremap   v   <C-V>
nnoremap <C-V>     v
vnoremap    v   <C-V>
vnoremap <C-V>     v

set autoindent
set showmode
" Number sytem for c-a and c-x incrementation/decrementation
set nrformats-=octal
" Rounds to indent to multiples of shiftwidth
set shiftround
" timeout for combination of keys before considered sime key strokes
set ttimeout
set ttimeoutlen=55
" Automatically write file when making programs
set autowrite
" Fast saving
nmap <leader>w :w!<cr>
Arpeggio map wq :wq<cr>
" Fast exiting
nnoremap <leader>qq :qa!<cr>
nnoremap <leader>q :q!<cr>
" :W sudo saves the file
" (useful for handling the permission-denied error)
command W w !sudo tee % > /dev/null
"
" Set 3 lines to the cursor - when moving vertically using j/k
set scrolloff=3

" Height of the command bar
set cmdheight=2
" exit insert mode
inoremap <C-c> <Esc>
Arpeggio inoremap jk <ESC>
" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
" Makes search act like search in modern browsers
set incsearch
" For regular expressions turn magic on
set magic
" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set matchtime=4
" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set timeoutlen=500

" => Netrw settings
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 12
Arpeggio nnoremap fe :Lex<cr>

" set column border in color
highlight ColorColumn ctermbg=blue
"call matchadd('ColorColumn', '\%81v', 100)

" Enable syntax highlighting
syntax on
" Enable better colors
set t_Co=256
" Set extra options when running in GUI mode
if has('gui_running')
    set guioptions-=T
    set guioptions-=e
    set guitablabel=%M\ %t
endif

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf-8

" => Files, backups and undo
set titlestring=VIM
" => Text, tab and indent related
" Use spaces instead of tabs
set expandtab
" Be smart when using tabs ;)
set smarttab
" 1 tab == 4 spaces
set shiftwidth=2
set tabstop=2
" Linebreak on 500 characters
set linebreak
set textwidth=130
set smartindent "Smart indent
set wrap "Wrap lines

" => Vimdiff
nnoremap <leader>dr :diffget RE<cr>
nnoremap <leader>dl :diffget LO<cr>
nnoremap <leader>db :diffget BA<cr>

" => Visual mode related
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>
" => Moving around, tabs, windows and buffers
" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <c-space> ?
" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>
" Smart way to move between windows
map <C-j>     <C-W>j
map <C-k>     <C-W>k
map <C-h>     <C-W>h
map <C-l>     <C-W>l

" Close the current buffer
map <leader>bd :Bclose<cr>:tabclose<cr>gT
" Close all the buffers
map <leader>ba :bufdo bd<cr>
map <leader>l :bnext<cr>
map <leader>h :bprevious<cr>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove<cr>
map <leader>tj :tabnext<cr>
map <leader>tk :tabprevious<cr>

" Let 'tl' toggle between this and the last accessed tab
let g:lasttab = 1
nmap <Leader>tl :exe "tabn ".g:lasttab<CR>
augroup tabLeave
  au TabLeave * let g:lasttab = tabpagenr()
augroup end
" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>
" Specify the behavior when switching between buffers
try
  set switchbuf=useopen,usetab,newtab
  set showtabline=2
catch
endtry

" Return to last edit position when opening files (You want this!)
augroup pickup
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
augroup end

" Always show the status line
" set laststatus=1
" => Editing mappings
" Remap VIM 0 to first non-blank character
map 0 ^

" Move a line of text using ALT+[jk] or Command+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

" => Spell checking
" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>
hi SpellBad ctermfg=none ctermbg=4 guibg=Red
" Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=

" => Misc
" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" Quickly open a buffer for scribble
" map <leader>q :e ~/buffer<cr>

" Quickly open a markdown buffer for scribble
map <leader>x :e ~/buffer.md<cr>

" Toggle paste mode on and off
map <leader>pp :setlocal paste!<cr>

" Plugins config
" fzf.vim
" nnoremap <C-[> :Files<cr>
let g:fzf_layout = { 'right': '~20%' }
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" Limelight
augroup goyo
  autocmd! User GoyoEnter Limelight
  autocmd! User GoyoLeave Limelight!
augroup end

" VIMUX
" Prompt for a command to run
map <Leader>vp :VimuxPromptCommand<CR>
" Run last command executed by VimuxRunCommand
map <Leader>vl :VimuxRunLastCommand<CR>
" Inspect runner pane
map <Leader>vi :VimuxInspectRunner<CR>
" Zoom the tmux runner pane
map <Leader>vz :VimuxZoomRunner<CR>

" Language server
let g:LanguageClient_hasSnippetSupport = 0
let g:LanguageClient_hoverPreview = 'Never'
let g:LanguageClient_serverCommands = {
    \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
    \ 'python': ['/usr/local/bin/pyls'],
    \ 'sh': ['bash-language-server', 'start'],
    \ 'php': ['/usr/bin/php-language-server'],
    \ 'go' : ['/home/francis/Go/bin/go-langserver','-gocodecompletion','-func-snippet-enabled', 'false'],
    \ 'html' : ['/usr/lib/node_modules/vscode-html-languageserver-bin/htmlServerMain.js','--stdio'],
    \ 'css' : ['/usr/lib/node_modules/vscode-css-languageserver-bin/cssServerMain.js','--stdio'],
    \ 'cpp': ['cquery', '--log-file=/tmp/cq.log'],
    \ 'c': ['cquery', '--log-file=/tmp/cq.log'],
    \ 'json' : ['/usr/lib/node_modules/vscode-json-languageserver-bin/jsonServerMain.js','--stdio'],
    \ 'javascript': ['/usr/bin/javascript-typescript-stdio'],
\}
nnoremap <F7> :call LanguageClient_contextMenu()<CR>
noremap <leader>rn :call LanguageClient#textDocument_rename()<CR>

let g:multi_cursor_use_default_mapping=0
" Default mapping
let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'

" Deoplete
"let g:deoplete#enable_at_startup = 1

" deoplete + neosnippet + autopairs changes
let g:AutoPairsMapCR=0

let g:SuperTabDefaultCompletionType = '<c-n>'

" CtrlP
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*

" neosnippet
imap <C-k>    <Plug>(neosnippet_expand_or_jump)
smap <C-k>    <Plug>(neosnippet_expand_or_jump)
xmap <C-k>    <Plug>(neosnippet_expand_target)

" ale
let g:ale_linters_explicit = 1
" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1
" Enable completion where available.
let g:ale_completion_enabled = 0

" => Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='one'
let g:airline_powerline_fonts = 1

" => IndentLine
let g:indentLine_char = '┆'
let g:indentLine_color_term = 239

" => Golang
let g:go_fmt_command = 'goimports'
let g:go_auto_type = 1
let g:go_template_autocreate = 0
let g:go_gocode_unimported_packages = 1
let g:go_bin_path= '/home/francis/Go/bin'

nnoremap <leader>gt :GoTest<cr>
nnoremap <leader>gs :GoFillStruct<cr>
nnoremap <leader>gf :GoFmt

" => Rust
augroup rustfmt
  autocmd FileType rust,rs cnoreabbrev ff :%! rustfmt<cr>
  autocmd FileType rust,rs cnoreabbrev fs :!rustfmt<cr>
augroup end

" javascript
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1

" => Git
set statusline+=%{fugitive#statusline()}
set signcolumn=yes
Arpeggio map gs :Gstatus<cr>
Arpeggio map gb :Gblame<cr>
Arpeggio map gc :Gcommit<cr>a
Arpeggio map gd :Gdiff<cr>a

" => goyo
nnoremap <leader>f :Goyo<cr>
let g:goyo_width = 80
let g:goyo_height = 90
let g:goyo_linenr = 1

" hledger

" => Helper functions
" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
    return ''
endfunction

" Basic shortcuts definitions
"  most in visual mode / selection (v or ⇧ v)
" indent / deindent after selecting the text with (⇧ v), (.) to repeat.
vnoremap <Tab> >
vnoremap <S-Tab> <
" comment / decomment & normal comment behavior
vmap <C-m> gc
" Disable tComment to escape some entities
let g:tcomment#replacements_xml={}

" Text wrap simpler, then type the open tag or ',"
vmap <C-w> S
" lazy ':'
map \ :

nnoremap <Leader>p :set paste<CR>
nnoremap <Leader>o :set nopaste<CR>

" Diffcolors
highlight DiffAdd    cterm=bold ctermfg=2 ctermbg=none gui=none guifg=bg guibg=Red
highlight DiffDelete cterm=bold ctermfg=1 ctermbg=none gui=none guifg=bg guibg=Red
highlight DiffChange cterm=none ctermfg=4 ctermbg=none gui=none guifg=bg guibg=Red
highlight DiffText   cterm=none ctermfg=11 ctermbg=none gui=none guifg=bg guibg=Red

" Color scheme
" Background color
set background=dark
" Colorscheme
colorscheme PaperColor
