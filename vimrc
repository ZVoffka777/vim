set nocompatible
set number relativenumber
set relativenumber
set spellfile=~/.vim/spell/en.utf-8.add
set nocp
set ruler
set laststatus=2
"----------- https://parallel.uran.ru/node/469 ----------
set autowrite
set autoindent
" ---------- END ----------
set filetype=vim "добавит цвета.
autocmd FileType python runtime! autoload/pythoncomplete.vim
set iskeyword=@,48-57,_,192-255 
"----------- https://habr.com/ru/post/468265/ ----------
set rtp+={repository_root}/powerline/bindings/vim
set guifont=Fura\ Code\ Light\ Nerd\ Font\ Complete:h20 "Это light версия
"set guifont=Tahoma:h16
"set guifont=Consolas:h16
set guifont=Droid\ Sans\ Mono\ Nerd\ Font:h20
set wrap linebreak nolist "переносит строчки не посимвольно, а по словам
"---------------------- ctrl+h ------------------- 
iab cl console.log
"----------------------
"autocmd filetype crontab setlocal nobackup nowritebackup "https://superuser.com/questions/201172/mac-crontab-is-never-created
"----------------------
set smartindent "Копирует отступ от предыдущей строки.
set autoindent "Включить автоматическую расстановку отступов.
set ai " Включить выключить автовыравнивание строк: " http://parallel.uran.ru/book/export/html/467
"----------------------
set cursorline           " подсветка строки и столбца курсора.
set hlsearch             " подсветка результатов поиска
set incsearch            " подсветка результатов поиска вовремя набора

"============= СВОРАЧИВАНИЯ БЛОКОВ КОДА \(фолдинг\) ============= http://eax.me/vim-commands/
set foldenable           "включить свoрачивание
set foldmethod=syntax    "сворачивание на основе синтаксиса
set foldmethod=indent    "сворачивание на основе отступов
set foldmethod=manual    "выделяем участок с помощью v и говорим zf
"set foldmethod=marker   "сворачивание на основе маркеров в тексте
"set foldlevel=1         " Первый уровень вложенности открыт, остальные закрыты
"set foldopen=all        " автоматическое открытие сверток при заходе в них
" ========== убрать подсветку после поиска (noh) пробелом ==========
nnoremap <silent> <Space> :nohl<Bar>:echo<CR> 
""=========== END Autocomplete ===========
set showmatch " подсветку результатов поиска и совпадения скобок.
imap [ []<left>
imap ( ()<left>
imap < <><left>
imap { {}<left>

autocmd FileType tt2html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS})]
"----------------------
execute pathogen#infect("bundle/{Plugin 'Syntastic'}")
syntax on
filetype plugin indent on

"--------- PlugInstall --------
call plug#begin('~/.vim/plugged')

"-------- START surround.vim -----------
"Plug 'tpope/vim-surround' 
Plug 'anyakichi/vim-surround'
set clipboard=unnamedplus
"-------- end START surround.vim -----------

"-------- end START vim-auto-save -----------
Plug '907th/vim-auto-save'
Plug 'vim-scripts/vim-auto-save'
let g:auto_sav = 1
let g:auto_save_events = ["InsertLeave", "TextChanged"]

let g:auto_save_in_insert_mode = 0
let g:auto_save_no_updatetime = 1

"--------end END vim-auto-save-----------
set showmatch " подсветку результатов поиска и совпадения скобок, есть чуть выше
"=========== vim-gssby ===========
"Plug 'hydrotoast/vim-gss'
"----------------------
Plug 'mgechev/vim-jsx'
"----------------------
"Plug 'myusuf3/numbers.vim'
Plug 'vim-scripts/vim-auto-save'
"Plug 'StanAngeloff/php.vim'
"----------------------
"https://github.com/kien/ctrlp.vim
"Plug 'ctrlpvim/ctrlp.vim'
"let g:ctrlp_map = '<c-p>'
"let g:ctrlp_cmd = 'CtrlP'
"----------------------

"------------------- https://vimawesome.com/plugin/emmet-vim ------------------
Plug 'mattn/emmet-vim'
"----------- https://habr.com/ru/post/468265/ ----------
Plug 'vim-airline/vim-airline' "В список плагинов 
Plug 'ryanoasis/vim-devicons' "добавляет удобные иконочки.
"----------------------
Plug 'Chiel92/vim-autoformat'
"----------- https://www.linux.org.ru/forum/web-development/10662433 ----------
Plug 'scrooloose/syntastic'
Plug 'moll/vim-node'
Plug 'pangloss/vim-javascript',      { 'for': 'javascript' }
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_jsdoc = 1
Plug 'jelera/vim-javascript-syntax', { 'for': 'javascript' }
let javascript_enable_domhtmlcss = 1
let g:html_indent_inctags        = "html,body,head,tbody"
let g:html_indent_script1        = "inc"
let g:html_indent_style1         = "inc"
"----------- http://qaru.site/questions/38829/recommended-vim-plugins-for-javascript-coding ---------
"Plug 'hallettj/jslint.vim'

"Plug 'othree/javascript-libraries-syntax.vim', { 'for': 'javascript' }
"let b:current_syntax       = 'javascript'
"let g:used_javascript_libs = 'angularjs'
"let g:used_javascript_libs = 'underscore,backbone'
"
"autocmd BufReadPre *.js let b:javascript_lib_use_jquery = 1
"autocmd BufReadPre *.js let b:javascript_lib_use_underscore = 1
"autocmd BufReadPre *.js let b:javascript_lib_use_backbone = 1
"autocmd BufReadPre *.js let b:javascript_lib_use_prelude = 0
"autocmd BufReadPre *.js let b:javascript_lib_use_angularjs = 0
"----------------------
"https://vimawesome.com/plugin/svg-vim
Plug 'vim-scripts/svg.vim'
au BufNewFIle, BufRead *.svg setf svg svg*
"----------------------
"https://goo.gl/0TdA4b
"коментирует строки
Plug 'scrooloose/nerdcommenter'
Plug 'preservim/nerdtree'
Plug 'scrooloose/nerdtree'

"---------------------- Артур Мамедбеков Vim --------------

Plug 'indexer.tar.gz'  "https://youtu.be/JJ8sJXUp2g4?t=38m12s
Plug 'vim-scripts/vimprj'
Plug 'vim-scripts/DfrankUtil'
Plug 'vim-scripts/delimitMate.vim'
Plug 'jiangmiao/auto-pairs' "Вставить или удалить скобки, скобки, кавычки в паре.
Plug 'easymotion/vim-easymotion' "супер-быструю навигацию в минимальное количество нажатий.
"Plug 'rking/ag.vim' "https://youtu.be/uBb9Z0hsNuY?t=22m37s
call plug#end()

" ========== END PlugInstall ==========

"-------- для easymotion/vim-easymotion --------------
let g:mapleader=','
"----------------

"------- Start numbers  ------------

let g:numbers_exclude = ['tagbar', 'gundo', 'minibufexpl', 'nerdtree']
let g:numbers_exclude = ['unite', 'tagbar', 'startify', 'gundo', 'vimshell', 'w3m']

let g:enable_numbers = 1

nnoremap <F3> :NumbersToggle<CR>
nnoremap <F4> :NumbersEnable<CR>

"------- End numbers  ------------

"------- Start кириллица  ------------

set spelllang=en,ru "проверка арфографи
set spelllang=ru_yo,en_us 
"set spell
set nospell
autocmd FileType plaintext setlocal spell spelllang=ru
set langmap=!\\"№\\;%?*ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;!@#$%&*`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>
"
"https://habr.com/post/98393/
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
highlight lCursor guifg=NONE guibg=Cyan
"------- End кириллица  ------------
"
" 256 colors for terminal vim
set t_Co=256
colorscheme desert
set encoding=utf-8
"----------------------
"source $VIMRUNTIME/macros/justify.vim
"set langmap=!\\"№\\;%?*ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;!@#$%&*`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>
"set statusline=%f%m%r%h%w\ %y\ enc:%{&enc}\ ff:%{&ff}\ fenc:%{&fenc}%=(ch:%3b\ hex:%2B)\ col:%2c\ line:%2l/%L\ [%2p%%]
"------------ END для работы с кириллицей ----------
"
"-------- statr NERDTree ----------

autocmd StdinReadPre * let s:std_in=0
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let g:NERDTreeChDirMode = 2  "Change current folder as root
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) |cd %:p:h |endif
autocmd vimenter * NERDTree

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
map <C-n> :NERDTreeMirror<CR>
map <C-n> :NERDTreeToggle<CR>

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

"-------- START https://habr.com/ru/post/468265/-----------
let g:airline_powerline_fonts = 1 "Включить поддержку Powerline шрифтов
let g:airline#extensions#keymap#enabled = 0 "Не показывать текущий маппинг
let g:airline_section_z = "\ue0a1:%l/%L Col:%c" "Кастомная графа положения курсора
let g:Powerline_symbols='unicode' "Поддержка unicode
let g:airline#extensions#xkblayout#enabled = 0 "Про это позже расскажу
"-------- END   https://habr.com/ru/post/468265/-----------


