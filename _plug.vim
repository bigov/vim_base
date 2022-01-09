"------------------------------------------------------------------------------
" allows to use <Tab> for all insert completion needs (:help ins-completion)
" git clone --depth=1 https://github.com/ervandew/supertab.git
" :help supertab
"------------------------------------------------------------------------------
packadd supertab

"------------------------------------------------------------------------------
" Path navigator designed to work with Vim's built-in mechanisms
" and complementary plugins.
" https://github.com/justinmk/vim-dirvish.git
"------------------------------------------------------------------------------
packadd vim-dirvish

"------------------------------------------------------------------------------
" https://github.com/vimwiki/vimwiki.git
" https://raw.githubusercontent.com/vimwiki/utils/master/vwtags.py
"------------------------------------------------------------------------------
packadd vimwiki

if has('win32')
  let s:PyCtagsBin = g:vimrc_dir. '\assets\vwtags.py'
else
  let s:PyCtagsBin = g:vimrc_dir. '/assets/vwtags.py'
endif

let g:tagbar_type_vimwiki = {
          \   'ctagstype': 'vimwiki'
          \ , 'kinds': ['h:header']
          \ , 'sro': '&&&'
          \ , 'kind2scope': {'h':'header'}
          \ , 'sort': 0
          \ , 'ctagsbin': s:PyCtagsBin
          \ , 'ctagsargs': 'default'
          \ }

"------------------------------------------------------------------------------
" https://github.com/preservim/tagbar.git
"------------------------------------------------------------------------------
packadd tagbar

"------------------------------------------------------------------------------
" SHOULD BE
"------------------------------------------------------------------------------
" Фоновая проверка синтаксиса: https://github.com/dense-analysis/ale
"
"------------------------------------------------------------------------------

"------------------------------------------------------------------------------
" Плагин отображения имен файлов открытых буферов в зоне tabline
" url = https://github.com/mg979/vim-xtabline.git
" XTabline theme
" -----------------------------------------------------------------------------
"XTFill       - цвет панели
"XTSelect     - активная вкладка
"XTSelectMod  - индикатор изменения
"XTNumSel     - номер активной вкладки
"XTHidden     - неактивная вкладка
"XTHiddenMod  - индикатор изменения
"XTNum номер  - неактивной вкладки
"XTExtra      - текущий режим
"XTExtraMod
"XTCorner     - название текущей папки
"XTVisibleMod - несохраненные изменения (*)
"XTVisible    - неактивное окно
"XTSpecial    - специальные окна (NerdTree...)
"------------------------------------------------------------------------------
"packadd vim-xtabline
"let g:xtabline_settings.tab_number_in_left_corner = 1
":silent! XTabMode buffers

" -----------------------------------------------------------------------------
" Дополнения для подсветки синтаксиса C/C++ исходных файлов
" url = https://github.com/bfrg/vim-cpp-modern.git
" -----------------------------------------------------------------------------
"packadd vim-cpp-modern

" -----------------------------------------------------------------------------
" Интерактивное изменение цветов подсветки синтаксиса
" Вызов поизводится сочтанием |yc|
" переключение Fg/Bg - клавиша B
" Выход q
" После выхода можно записать строку в открытый файл командой :MacawWrite
" -----------------------------------------------------------------------------
"packadd vim-macaw

helptags ALL

