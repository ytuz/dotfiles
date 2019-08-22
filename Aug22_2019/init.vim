" Enable syntax highlighting
syntax on
filetype plugin indent on
" ===========
" vim-plug configurtion
" ===========
call plug#begin('~/.config/nvim/plugins')
    " NERD Tree
    Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
    " Git support for NERD Tree
    Plug 'Xuyuanp/nerdtree-git-plugin'
    " Golang support
    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
    " Syntax highlight for golang present slides.
    Plug 'zchee/vim-go-slide'
    " Golang debugger
    " yay -S delve
    Plug 'sebdah/vim-delve'
    " Install Exxuberant Ctags
    " brew install ctags
    " Code structure panel
    Plug 'majutsushi/tagbar'
    " Infobar
    Plug 'vim-airline/vim-airline'
    " Git diff
    Plug 'airblade/vim-gitgutter'
    " Speed moving across file
    Plug 'easymotion/vim-easymotion'
    " Multiline editing
    Plug 'terryma/vim-multiple-cursors'
    " NERD Commeter
    Plug 'scrooloose/nerdcommenter'
    " Fuzzy search
    " yaourt -S the_silver_searcher fzf
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'
    " Required by FZF
    Plug 'tpope/vim-fugitive'
 		" Commit tree
		Plug 'junegunn/gv.vim'
    " Snippets engine
    Plug 'SirVer/ultisnips'
    " Markdown
    Plug 'godlygeek/tabular'
    " Snippets are separated from the engine.
    Plug 'plasticboy/vim-markdown'
    Plug 'mzlogin/vim-markdown-toc'
    Plug 'MattesGroeger/vim-bookmarks'
    " Window movement by shourtcuts.
    Plug 't9md/vim-choosewin'
    Plug 'gcmt/taboo.vim'
        " Autocomplete for Go
    Plug 'Shougo/deoplete.nvim' ", { 'do': ':UpdateRemotePlugins' }
    Plug 'stamblerre/gocode', { 'rtp': 'nvim', 'do': '~/.config/nvim/plugins/gocode/vim/symlink.sh' }
    Plug 'deoplete-plugins/deoplete-go', { 'do': 'make'}
    " Debugger integration via delve
    Plug 'jodosha/vim-godebug'

    " Highlight code blocks
    Plug 'junegunn/limelight.vim'
    " For writers
    Plug 'junegunn/goyo.vim'
    " Toml hightlight
    Plug 'cespare/vim-toml'
    " Linter
    Plug 'w0rp/ale'
    Plug 'uber/prototool', { 'rtp':'vim/prototool' }
    " auto pair for brackets.
    Plug 'jiangmiao/auto-pairs'
    " Plug 'ryanoasis/vim-devicons'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
call plug#end()

" Main options
let mapleader = ","
" Disable compability mode
set nocompatible
" Wrap settings
set wrap
set linebreak
let &showbreak='•   '
" Set encoding
set encoding=UTF-8
" Set line ident
set cc=80
" Don't give ins-completion-menu messages.
" set shortmess+=c
" Enable relative number view
set relativenumber
" Reload file on update
set autoread
" Set the line number
set number
" Show col and row numbers in statusbar
set ruler
" Don’t reset cursor to start of line when moving around.
set nostartofline
" Show the current mode
set showmode
" The kind of folding used for the current window
set foldmethod=syntax
set foldlevel=99
" use c-w and c+u
set backspace=2
set noswapfile
" Max memory pattern
set mmp=25000
" Tabs
set expandtab tabstop=2 shiftwidth=2 softtabstop=2
" Copy indent from current line when starting a new line
set autoindent
set smartindent shiftwidth=2
set showmatch
set showcmd
" Start scrolling when we're N lines away from margins
set scrolloff=5
" Spaces
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
" Open files from quickfix/location window as vertical split
set switchbuf=vsplit
" Open new hirizontal splitted buffer under the current
set splitbelow
" Open new hirizontal splitted buffer on the right
set splitright
" Highlight the search result
set hlsearch
" Real-time search
set incsearch
" Disable error beeping
set noeb vb t_vb=
" Always display the status line
set laststatus=2
" Extend path
set path+=**
" Time in milliseconds to wait for a mapped sequence to complete.
set timeoutlen=750

" ===== Autocmd =====
" Enable spell checker.
autocmd BufRead,BufNewFile * setlocal spell spelllang=en_us
" Remove trailing white spaces on :w
autocmd BufWritePre * :%s/\s\+$//e
" Show cursor line in insert mode
autocmd InsertEnter * set cursorline
" Hide cursor line in insert mode
autocmd InsertLeave * set nocursorline
" Syntax Highlight
autocmd BufRead,BufWrite,BufNewFile *.sql setlocal filetype=sqlserver
autocmd BufRead,BufNewFile *.slide set filetype=slide
autocmd BufReadPost Jenkinsfile set syntax=groovy
autocmd BufReadPost Jenkinsfile set filetype=groovy

" Move line down
nmap <C-j> :m +1<CR>
" Move line up
nmap <C-k> :m -2<CR>
" I said save and exit. :)
:command! WQ wq
:command! Wq wq
:command! W w
:command! Q q
" unmap F1 help
nmap <F1> <nop>
imap <F1> <nop>
" unmap ex mode
nmap Q <nop>

map <leader>qq :q<cr>
map <leader>s  :w<cr>
nmap <F11> :e ++enc=WINDOWS-1251<CR>
" Yank till end of line.
map Y  y$
" Yank to system clipboard.
map YY "+y
" Paste from system clipboard.
map PP "+p

nmap 99 :Limelight<cr>
nmap (( :Limelight!<cr>

imap jj <esc>
nmap <leader>td i// TODO(ekhabarov):
map <leader>/ :set list!<cr>
nmap <leader>tf :TableFormat<cr>
map <leader>pp :pclose<cr>
map <leader>sb :set scrollbind<cr>

" Disable Python2 provider
let g:loaded_python_provider = 1

" Themes
set t_Co=256
set background=dark
" Access colors present in 256 colorspace
let base16colorspace=256
let g:solarized_termcolors=256
colorscheme solarized


let s:brown = "905532"
let s:aqua =  "3AFFDB"
let s:blue = "689FB6"
let s:darkBlue = "44788E"
let s:purple = "834F79"
let s:lightPurple = "834F79"
let s:red = "AE403F"
let s:darkRed = "B5302E"
let s:beige = "F5C06F"
let s:yellow = "F09F17"
let s:orange = "D4843E"
let s:darkOrange = "F16529"
let s:pink = "CB6F6F"
let s:salmon = "EE6E73"
let s:green = "8FAA54"
let s:lightGreen = "31B53E"
let s:white = "FFFFFF"
let s:gray = "C2C2C2"
let s:rspec_red = 'FE405F'
let s:git_orange = 'F54D27'

let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExtensionHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExtensionHighlightColor['go'] = s:darkBlue
let g:NERDTreeExtensionHighlightColor['proto'] = s:red
let g:NERDTreeExtensionHighlightColor['mk'] = s:darkRed
let g:NERDTreeExtensionHighlightColor['yaml'] = s:gray
let g:NERDTreeExtensionHighlightColor['yml'] = s:gray
let g:NERDTreeExtensionHighlightColor['pb.go'] = s:brown
let g:NERDTreeExtensionHighlightColor['pb.gw.go'] = s:brown
let g:NERDTreeExtensionHighlightColor['twirp.go'] = s:brown

nmap + :resize +2<CR>
nmap _ :resize -2<CR>
nmap = :vertical resize +2<CR>
nmap - :vertical resize -2<CR>

"" Split
noremap <Leader>h :<C-u>split<CR>
noremap <Leader>v :<C-u>vsplit<CR>

"" Clean search (highlight)
nnoremap <silent> <leader><space> :noh<cr>


" ==========================
" ==== Plugins settings ====
" ==========================

" NERD Tree
map <leader>nn :NERDTreeToggle<CR>
map <leader>nf :NERDTreeFocus<CR>
map <leader>nm :NERDTreeMirror<CR>
noremap \ :NERDTreeToggle<CR>
" noremap | :NERDTreeFind<CR>
nnoremap <silent> <F2> :NERDTreeFind<CR>

set clipboard=unnamed

" BUffer navigation
noremap <leader>c :bd<CR>

" Hide extra elements
let NERDTreeMinimalUI = 1
" Tree width
let g:NERDTreeWinSize = 40
let NERDTreeShowHidden=1

" vim-go settings
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_info_mode = 'guru'
let g:go_def_mode = 'guru'
let g:go_fmt_command = "goimports"
let g:go_fmt_experimental = 1
let g:go_fmt_options = {
  \ 'goimports': '--local git-lab.boldapps.net',
  \ }
let g:go_metalinter_deadline = "10s"
let g:go_test_timeout= '60s'
let g:go_term_mode = "split"
let g:go_term_height = 10
let g:go_term_width = 10
let g:go_term_enabled = 1
let g:go_list_type = ""
let g:go_list_autoclose = 1
let g:go_list_type = "quickfix"

autocmd FileType go nmap <leader>a  :GoAlternate<cr>
autocmd FileType go nmap <leader>at :GoAddTags<cr>
autocmd FileType go nmap <leader>b  :GoBuild<cr>
autocmd FileType go nmap <leader>cc :GoCoverageClear<cr>
autocmd FileType go nmap <leader>cr :GoCoverage<cr>
autocmd FileType go nmap <leader>cb :GoCoverageBrowser<cr>
autocmd FileType go nmap <leader>ct :GoCoverageToggle<cr>
autocmd FileType go nmap <leader>d  :GoDescribe<cr>
autocmd FileType go nmap <leader>fs :GoFillStruct<cr>
autocmd FileType go nmap <leader>hh :GoDef<cr>
autocmd FileType go nmap <leader>gi :GoInstall<cr>
autocmd FileType go nmap <leader>i  :GoInfo<cr>
autocmd FileType go nmap <leader>ii :GoSameIds<cr>
autocmd FileType go nmap <leader>ic :GoSameIdsClear<cr>
autocmd FileType go nmap <leader>ir :GoIfErr<cr>
autocmd FileType go nmap <leader>kk :GoKeyify<cr>
autocmd FileType go nmap <leader>l  :Gblame<cr>
autocmd FileType go nmap <leader>m  :GoMetaLinter<cr>
autocmd FileType go nmap <leader>n  :GoRename<cr>
autocmd FileType go nmap <leader>o  :GoDecls<cr>
autocmd FileType go nmap <leader>oo :GoDeclsDir<cr>
autocmd FileType go nmap <leader>p  :GoImplements<cr>
autocmd FileType go nmap <leader>r  :GoRun<cr>
autocmd FileType go nmap <leader>t  :GoTest<cr>
autocmd FileType go nmap <leader>tf :GoTestFunc<cr>
autocmd FileType go nmap <leader>z  :GoImpl<cr>
" Delve
let g:delve_new_command = "vnew"
autocmd FileType go nmap <leader>dd :DlvToggleBreakpoint<cr>
autocmd FileType go nmap <leader>dt :DlvToggleTracepoint<cr>
autocmd FileType go nmap <leader>dc :DlvClearAll<cr>
autocmd FileType go nmap <leader>dr :DlvDebug<cr>

set completeopt=longest,menuone

" fugitive
nmap <leader>gs  :Gstatus<cr>

" Easymotion settings
" Replace regular search w/ easymotion search.
map / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
" Default next and previous search bindings now use easymotion.
map <C-n> <Plug>(easymotion-next)
map <C-N> <Plug>(easymotion-prev)
let g:EasyMotion_smartcase = 1

set ignorecase
set smartcase

" Multicursor settings

" Turn off default key mappings
let g:multi_cursor_use_default_mapping=0

" Switch to multicursor mode with ,mc
let g:multi_cursor_start_key='<leader>c'
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

" NERD Commenter settings
map <C-\> <plug>NERDCommenterToggle
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDAltDelims_java = 1
let g:NERDCustomDelimiters = {
  \ 'sqlserver': { 'left': '--','right': '', 'leftAlt': '--','rightAlt': ''},
  \ 'proto': { 'left': '//','right': ''},
  \ 'c': { 'left': '/**','right': '*/' }
\ }
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1

" FZF settings
nmap <c-x><c-o>  <plug>(fzf-complete-line)
nmap <leader>fb :Buffers<cr>
nmap <leader>ff :Files<cr>
nmap <leader>fg :GFiles<cr>
nmap <leader>os :Snippets<cr>
nmap <leader>fw :Windows<cr>
nmap <leader>fa :Ag<cr>

" vim-markdown settings
set conceallevel=2

" Go to tab by number
map <leader>1 1gt
map <leader>2 2gt
map <leader>3 3gt
map <leader>4 4gt
map <leader>5 5gt
map <leader>6 6gt
map <leader>7 7gt
map <leader>8 8gt
map <leader>9 :tablast<cr>

nnoremap <Tab> gt
nnoremap <S-Tab> gT
nnoremap <silent> <S-t> :tabnew<CR>

"" Switching windows
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h


" git-gutter
let g:gitgutter_max_signs = 2000

" Airline config
let g:airline_detect_paste=0
let g:airline_detect_spell=0
let g:airline_skip_empty_sections = 1
let g:airline_powerline_fonts = 0
let g:airline_symbols_ascii = 0
let g:airline_extensions = ['branch', 'tabline']
let g:airline_section_y = airline#section#create([''])
let g:airline_section_error = airline#section#create([''])
let g:airline_section_warning = airline#section#create([''])

" Choose win
nmap <leader>w <Plug>(choosewin)
let g:choosewin_overlay_enable = 1
let g:choosewin_blink_on_land=0

" Tagbar
nmap <leader>tt :TagbarToggle<CR>
let g:tagbar_case_insensitive = 1
let g:tagbar_show_linenumbers = 2
let g:tagbar_autofocus = 1
let g:tagbar_width = 50
let g:tagbar_expand = 1

" Taboo settings
let g:taboo_tab_format = ' [ %N: %f%m ] '
let g:taboo_unnamed_tab_label = '<empty>'

" Deoplete-go
let g:deoplete#enable_at_startup = 1

let g:deoplete#sources#go#gocode_binary = $GOBIN.'/gocode'
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
let g:deoplete#sources#go#builtin_objects = 1
" let g:deoplete#ignore_sources = get(g:, 'deoplete#ignore_sources', {})
" let g:deoplete#ignore_sources.php = ['omni']
" let g:deoplete#sources#go#source_importer = 1
let g:deoplete#sources#go#unimported_packages = 1
" let g:deoplete#sources#go#fallback_to_source = 1

" Prototool settings
let g:ale_linters = {
\   'go': ['golint'],
\   'proto': ['prototool-lint'],
\}

let g:ale_lint_on_text_changed = 'never'

" gitgatter
nmap [p <Plug>GitGutterPrevHunk
nmap ]p <Plug>GitGutterNextHunk

nmap <F12> :!chromium file://:p<CR><CR>

" set runtimepath+=,~/develop/vim/mssql.vim/
