"----------------------------------------------------------------------------"
"
" Edited: 20.05.2022
"
"----------------------------------------------------------------------------"

" Внимание! Включение подсветки строки в терминальной сессии может привести
" к притормаживанию курсора при переходах между строками (замечено в Putty)
set cursorcolumn
au WinEnter * set cursorcolumn
au WinLeave * set nocursorcolumn
set cursorline
au WinEnter * set cursorline
au WinLeave * set nocursorline

set antialias
set lines=64
set columns=132
if has('win32')
  set guifont=DejaVu_Sans_Mono_for_Powerline:h9:cRUSSIAN:qDRAFT
else
  set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
endif

