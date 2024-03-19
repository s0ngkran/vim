" SETTING
filetype plugin indent on
syntax enable
set backspace=indent,eol,start
set tabstop=4
set expandtab
set shiftwidth=4
set number
set autoindent
set smartindent
set softtabstop=4
set guifont=consolas:h10
set background=dark
set clipboard=unnamed
set textwidth=120
set ignorecase
set smartcase
set hlsearch
set incsearch
set autochdir
set cursorline
set cursorcolumn
let g:closetag_filenames = "*.html,*.xhtml,*.phtml, *.xml, *.php"
let mapleader = " "

" DEV
nmap <leader>gg :echo "hello sk"<CR>
nmap <leader>vv :tabnew ~/vim/mappings.vim<CR>
nmap <leader>vi :tabnew ~/vim/install.sh<CR>
nmap <leader>vr :tabnew ~/.vimrc<CR>
nmap <leader>vm :tabnew ~/.vim/mappings.vim<CR>
nmap <leader>as :w<CR>:source ~/.vimrc<CR>:echo "success source vimrc"<CR>

" USER INTERFACE
nmap <leader>un :set invnumber<CR>
nmap <leader>us /xxxx<CR>
nmap <leader>ax :! git log>~/.vim.result<CR> :e ~/.vim.result<CR>

" CONTROL
nmap <leader>q :q<CR>
nmap <leader>w :w<CR>
nmap <leader>Q :q!<CR>
nmap <leader>x :qa!<CR>
nmap <leader>m :tabnext<CR>
nmap <leader>M :tabNext<CR>
nmap ga :e#<CR>
nmap \ :vsplit<CR><C-W>l
nmap \| :split<CR><C-W>j
nmap <leader>wm :tabnew<CR>:e#<CR>
nmap <leader>c :tabclose<CR>
nmap H 0
nmap L $
nmap Y vg_y
nmap q :echo "recorder is disabled; \<leader\>vm to enable"<CR>

" NAVIGATION
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-h> <C-W>h
nmap <C-l> <C-W>l
nmap <leader>j <C-W>j
nmap <leader>k <C-W>k
nmap <leader>h <C-W>h
nmap <leader>ll <C-W>l
nmap <leader>l :!lazygit<CR>

" TERMINAL
" please config leader t for your own project
nmap <leader>t :vertical terminal<CR><C-w>L
" nmap <leader>tl :vertical terminal<CR><C-w>L
" nmap <leader>tj :terminal<CR><C-w>J
nmap <F7> :tab terminal<CR>
tmap <F7> <C-w>N:tabNext<CR>  
tmap <C-g> <C-w>N
"force quit terminal
tmap <C-f> <C-w>N:q!<CR> 

" MARKS
" Remap lowercase marks to uppercase marks
for c in range(char2nr('a'), char2nr('z'))
    let char = nr2char(c)
    " ma to mA
    " 'a to `A
    execute 'nnoremap m' . char . ' m' . toupper(char)
    execute "nnoremap '" . char . ' `' . toupper(char)
endfor

" PLUGIN MAPPING
" PLUGIN MAPPING
" PLUGIN MAPPING

" easymotion
let g:EasyMotion_do_mapping = 0 " Disable default mappings
let g:EasyMotion_smartcase = 1
nmap s <Plug>(easymotion-overwin-f2)

" CtrlP
let g:ctrlp_map = '<leader>f'

" auto save
let g:auto_save = 1  " enable AutoSave on Vim startup

" commentary
nmap gc :Commentary<CR>
vmap gc :Commentary<CR>

" nerd tree
let NERDTreeChDirMode=2
nmap <leader>e :NERDTreeToggle<CR>
nmap <leader>o :NERDTree %:p:h<CR>

" To register the descriptions when using the on-demand load feature,
" use the autocmd hook to call which_key#register(), e.g., register for the Space key:
" autocmd! User vim-which-key call which_key#register('<Space>', 'g:which_key_map')
" session
let g:session_autosave = "yes"

" theme
let g:gruvbox_contrast_dark = 'hard'
