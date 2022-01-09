"[F2] (<Ctrl>+S) - сохранить содержимое из текущего буфера в файл
ino <F2> <Esc>:write<cr>a
map <F2> :write<cr>

ino <C-S> <Esc>:write<cr>a
map <C-S> :write<cr>

" -----------------------------------------------------------------------------
" Highlight all instances of word under cursor, when idle.
" Подсветка в тексте всех экземпляров слова под курсором.
" -----------------------------------------------------------------------------
nnoremap <C-S> :if AutoHighlightToggle()<Bar>set hls<Bar>endif<CR>

"[F3] Execute current file as vim-script
nn <F3> :so%<cr>
ino <F3> <c-o>:w<cr><c-o>:so%<cr>

"[F6] Dialog for open new file
ino <F6> <c-o>:Explore<cr>
map <F6> :Explore<cr>

"[Ctrl-F8] - выключить выделение
no <C-F8> :nohlsearch<cr>
nn <C-F8> :nohlsearch<cr>
ino <C-F8> <c-o>:nohlsearch<cr>

"[F10] - выход
no <F10> :qa<cr>
nn <F10> :qa<cr>
ino <F10> <c-o>:qa<cr>

" Переключение буфера
map <Space>n :w<cr>:bn<cr>
map <Space>p :w<cr>:bp<cr>
map <Space>d :bd!<cr>

map <Space>t :terminal<cr>

"[*] Подсветка выделения
nn * *N
vno * y :execute ":let @/=@\""<cr> :execute "set hlsearch"<cr>

" set 'selection', 'selectmode', 'mousemodel' and 'keymodel' for MS-Windows
"!!!" behave mswin
set keymodel=startsel

" CTRL-X and SHIFT-Del are Cut
vnoremap <C-X> "+x
vnoremap <S-Del> "+x

" CTRL-C and CTRL-Insert are Copy
vnoremap <C-C> "+y
vnoremap <C-Insert> "+y

" SHIFT-Insert are Paste
map <S-Insert> "+gP
cmap <S-Insert> <C-R>+
