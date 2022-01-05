"----------------------------------------------------------------------------"
"
" Edited: 04.11.2022
"
"----------------------------------------------------------------------------"

set antialias
"set guioptions-=T
set lines=64
set columns=132
if has('win32')
  set guifont=DejaVu_Sans_Mono_for_Powerline:h9:cRUSSIAN:qDRAFT
else
  set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
endif

set cursorcolumn
au WinEnter * set cursorcolumn
au WinLeave * set nocursorcolumn

