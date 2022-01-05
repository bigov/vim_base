"------------------------------------------------------------------------------
" Плагин отображения имен файлов открытых буферов в зоне tabline
"------------------------------------------------------------------------------
packadd vim-xtabline
let g:xtabline_settings.tab_number_in_left_corner = 1
:silent! XTabMode buffers

" XTabline theme
" -----------------------------------------------------------------------------
hi XTSelect guibg=white guifg=gray24 gui=NONE ctermbg=15     "активная вкладка
hi XTSelectMod guibg=white guifg=gray24 gui=NONE ctermbg=15  "индикатор изменения
hi XTNumSel guibg=gray60 guifg=white ctermbg=243 ctermfg=15  "номер активной вкладки

hi XTHidden guibg=gray75 guifg=white ctermbg=248 ctermfg=15  "неактивная вкладка
hi XTHiddenMod guibg=gray75 guifg=white ctermbg=248          "индикатор изменения
hi XTNum guibg=gray60 guifg=white ctermbg=243 ctermfg=15     "номер неактивной вкладки

hi XTExtra guibg=gray86 ctermbg=253 ctermfg=229 guifg=yellow1 gui=NONE  "текущий режим
hi XTFill guibg=gray86 ctermbg=253                           "цвет панели
hi XTCorner guibg=gray80 guifg=white                         "название текущей папки
hi XTVisibleMod guibg=gray80 guifg=white                     "несохраненные изменния (*)

hi XTVisible guibg=gray75 guifg=white ctermbg=248 ctermfg=15 "неактивное окно

hi XTExtraMod guifg=green guibg=red
hi XTSpecial guifg=green guibg=red
