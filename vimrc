"----------------------------------------------------------------------------"
"
" Edited: 05.11.2022
"
"----------------------------------------------------------------------------"
set nocompatible
set number
set showmode
set showcmd
set expandtab                   "To insert a real tab use CTRL-V<Tab>
set tabstop=2
set shiftwidth=2                "ширина сдвига строк по команде ">"
set nowrap                        "залом строки по границе окна
set cmdheight=2
set laststatus=2
set incsearch                   "Инкрементальный поиск (в процессе набора)
set hlsearch                    "Подсвечивание результатов поиска
set foldenable
set foldmethod=manual           "marker | indent | manual | expr | syntax | diff
set autoindent                  "автоотступ для новой строки
set smartindent                 "добавление отступов, когда необходимо
set backspace=indent,eol,nostop "https://vimhelp.org/options.txt.html#%27backspace%27
set guioptions=gmt
set showtabline=2

set cursorcolumn
au WinEnter * set cursorcolumn
au WinLeave * set nocursorcolumn

set cursorline
au WinEnter * set cursorline
au WinLeave * set nocursorline

" Подсветка пробелов, табов и др. символов
set list
set listchars=tab:‣\ ,trail:·,precedes:«,extends:»

" Подсветка вертикальной границы 80 символов
set textwidth=0
set cc=+2 " show the right border column on number = textwidth+1
set cc=80 " Когда textwidth=0, то маркера не видно, поэтому ставим число

set fileformat=unix
set encoding=utf-8
set langmenu=ru_RU.UTF-8
set fileencodings=utf-8,cp1251,cp866,koi8-r
let $LANG='ru_RU'

" Настройка строки статуса
set statusline=[%n]\ %<%f\ [%Y%R,%{&ff},%{&fenc}%W]%=%m\ %03l/%03L\ [%03v\ %03b]

nohlsearch
syntax enable

filetype on                      "Vim filetype   detection
filetype plugin on               "Vim plugins system
filetype plugin indent on

if has('win32')
  let g:vimrc_dir=$HOME . '\vimfiles\'
else
  let g:vimrc_dir=$HOME . '/.vim/'
endif

colorscheme bigovlight

exec "source " . g:vimrc_dir . "_keys.vim"
exec "source " . g:vimrc_dir . "_func.vim"
exec "source " . g:vimrc_dir . "_plug.vim"

"set allowrevins
"set hidden
"set mouse=a
"set completeopt=menu            "чтоб сверху окном не хлопало
"set splitright                  "Открываем вертикальные окна справа
"set noguipty                    "Make external commands work through a pipe instead of a pseudo-tty

