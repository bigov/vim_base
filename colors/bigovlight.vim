" local syntax file - set colors
" Vim color file
" Last Change: 05.01.2022

set background=light

hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "bigovlight"

if has('gui_running') || (has('termguicolors') && &termguicolors) "GVIM mode
  let s:M = 'gui'
    let s:C00 = '#FFFFFF' "БЕЛЫЙ  фон
    let s:C01 = '#444444' "ЧЕРНЫЙ обычного текста
    let s:C02 = '#8F8F8F' "СЕРЫЙ
    let s:C03 = '#0078D7' "СИНИЙ Selection fg=#ffffff bg=#0078d7
    let s:C04 = '#CCCCCC' "СВЕТЛО-СЕРЫЙ
    let s:C05 = '#E8FFE8' "Подсветка курсора (только в gvim)
    let s:C06 = '#FAF0E6' "Cornsilk подсветка границы 80
    let s:C07 = '#ADD8E6' "СВЕТЛО-ГОЛУБОЙ специальные символы
    let s:C08 = '#0000FF' "СИНИЙ константы
    let s:C09 = '#008000' "ЗЕЛЕНЫЙ строки
    let s:C10 = '#000080' "ТЕМНО-СИНИЙ keyword
    let s:C11 = '#FF0000' "КРАСНЫЙ ошибка
else "Console Vim
  let s:M = 'cterm'
    let s:C00 = '15'
    let s:C01 = '236'
    let s:C02 = '248'
    let s:C03 = '21'
    let s:C04 = '254'
    let s:C05 = 'NONE'
    let s:C06 = '230'
    let s:C07 = '252'
    let s:C08 = '12'
    let s:C09 = '2'
    let s:C10 = '17'
    let s:C11 = '9'
endif

let s:TextCommon    = s:M.'bg='.s:C00.' '.s:M.'fg='.s:C01
let s:TextBold      = s:M.'bg='.s:C00.' '.s:M.'fg='.s:C01.' '.s:M.'=bold'
let s:TextGray      = s:M.'bg='.s:C00.' '.s:M.'fg='.s:C02
let s:TextLight     = s:M.'bg='.s:C00.' '.s:M.'fg='.s:C04
let s:TextSelect    = s:M.'bg='.s:C03.' '.s:M.'fg='.s:C00
let s:TextNumber    = s:M.'bg='.s:C00.' '.s:M.'fg='.s:C08
let s:TextString    = s:M.'bg='.s:C00.' '.s:M.'fg='.s:C09
let s:TextKeyword   = s:M.'bg='.s:C00.' '.s:M.'fg='.s:C10
let s:TextError     = s:M.'bg='.s:C00.' '.s:M.'fg='.s:C11
let s:PCursorLine   = s:M.'bg='.s:C05.' '.s:M.'fg=NONE'
let s:PCursorLineNR = s:M.'bg='.s:C05.' '.s:M.'fg='.s:C03.' '.s:M.'=bold'
let s:PanelMaxLen   = s:M.'bg='.s:C06.' '.s:M.'fg=NONE'
let s:PanelCursor   = s:M.'bg='.s:C02.' '.s:M.'fg='.s:C00
let s:TSpecialKey   = s:M.'bg=NONE '     .s:M.'fg='.s:C07

" Syntax
exe 'hi Boolean          '.s:TextNumber
exe 'hi Character        '.s:TextCommon
exe 'hi Comment          '.s:TextGray
exe 'hi Conditional      '.s:TextCommon
exe 'hi Constant         '.s:TextNumber
exe 'hi Debug            '.s:TextCommon
exe 'hi Define           '.s:TextBold
exe 'hi Delimiter        '.s:TextCommon
exe 'hi DiffAdd          '.s:TextCommon
exe 'hi DiffChange       '.s:TextCommon
exe 'hi DiffDelete       '.s:TextKeyword
exe 'hi DiffText         '.s:TextCommon
exe 'hi Error            '.s:TextError
exe 'hi Exception        '.s:TextCommon
exe 'hi Float            '.s:TextNumber
exe 'hi Function         '.s:TextCommon
exe 'hi Identifier       '.s:TextCommon
exe 'hi Ignore           '.s:TextCommon
exe 'hi Include          '.s:TextCommon
exe 'hi Keyword          '.s:TextKeyword
exe 'hi Label            '.s:TextCommon
exe 'hi Macro            '.s:TextCommon
exe 'hi MatchParen       '.s:TextSelect
exe 'hi Normal           '.s:TextCommon
exe 'hi Number           '.s:TextNumber
exe 'hi Operator         '.s:TextCommon
exe 'hi PreProc          '.s:TextKeyword
exe 'hi Precondit        '.s:TextCommon
exe 'hi Repeat           '.s:TextCommon
exe 'hi Special          '.s:TextCommon
exe 'hi SpecialChar      '.s:TextCommon
exe 'hi SpecialComment   '.s:TextGray
exe 'hi Statement        '.s:TextCommon
exe 'hi StorageClass     '.s:TextCommon
exe 'hi String           '.s:TextString
exe 'hi Structure        '.s:TextCommon
exe 'hi Tag              '.s:TextCommon
exe 'hi Title            '.s:TextCommon
exe 'hi Todo             '.s:TextCommon
exe 'hi Type             '.s:TextCommon
exe 'hi Typedef          '.s:TextCommon
exe 'hi Underlined       '.s:TextCommon
exe 'hi WildMenu         '.s:TextCommon

" User Interface
exe 'hi ColorColumn      '.s:PanelMaxLen
exe 'hi Cursor           '.s:PanelCursor
exe 'hi CursorColumn     '.s:PCursorLine
exe 'hi CursorLine       '.s:PCursorLine
exe 'hi CursorLineNr     '.s:PCursorLineNR
"exe 'hi Directory        '.s:PanelActive
"exe 'hi ErrorMsg         '.s:PanelActive
"exe 'hi FoldColumn       '.s:PanelActive
"exe 'hi Folded           '.s:PanelActive
exe 'hi IncSearch        '.s:TextSelect
exe 'hi Linenr           '.s:TextLight
exe 'hi ModeMsg          '.s:TextCommon
exe 'hi MoreMsg          '.s:TextCommon
"exe 'hi Pmenu            '.s:PanelActive
"exe 'hi PmenuSBar        '.s:PanelActive
"exe 'hi PmenuSel         '.s:PanelPassiv
"exe 'hi PmenuThumb       '.s:PanelActive
"exe 'hi Question         '.s:PanelActive
exe 'hi Search           '.s:TextSelect
exe 'hi SignColumn       '.s:TextLight
exe 'hi SpecialKey       '.s:TSpecialKey
"exe 'hi StatusLine       '.s:PanelActive "Линия под текущим окном
"exe 'hi StatusLineNC     '.s:PanelPassiv "Линия под остальными окнами
"exe 'hi StatusLineTerm   '.s:PanelActive
"exe 'hi StatusLineTermNC '.s:PanelPassiv
"exe 'hi Titled           '.s:PanelActive
"exe 'hi VertSplit        '.s:PVertSplit  "Разделитель окон
exe 'hi Visual           '.s:TextSelect
"exe 'hi WarningMsg       '.s:PanelActive

" XTabline theme
" -----------------------------------------------------------------------------
hi XTFill guibg=#666666 ctermbg=236                           "цвет панели

hi XTSelect guibg=white guifg=gray24 gui=NONE ctermbg=15     "активная вкладка
hi XTSelectMod guibg=white guifg=gray24 gui=NONE ctermbg=15  "индикатор изменения
hi XTNumSel guibg=gray60 guifg=white ctermbg=243 ctermfg=15  "номер активной вкладки

hi XTHidden guibg=#EEEEEE guifg=#000000 ctermbg=254 ctermfg=0 cterm=underline gui=underline  "неактивная вкладка
hi link XTHiddenMod XTHidden                                 "индикатор изменения
hi link XTNum XTNumSel                                       "номер неактивной вкладки

hi XTExtra guibg=#666666 ctermbg=236 guifg=#FFFFFF ctermfg=15 gui=NONE  "текущий режим
hi link XTExtraMod XTExtra
hi link XTCorner XTHidden                                    "название текущей папки
hi XTVisibleMod guibg=gray75 guifg=white ctermbg=248 ctermfg=15 "несохраненные изменения (*)

hi XTVisible guibg=gray75 guifg=white ctermbg=248 ctermfg=15 "неактивное окно

hi link XTSpecial XTSelect                                   "специальные окна (NerdTree...)

