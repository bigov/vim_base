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
    let s:C01 = '#242424' "ЧЕРНЫЙ обычного текста
    let s:C02 = '#8F8F8F' "ТЕМНО-СЕРЫЙ
    let s:C03 = '#0078D7' "СИНИЙ Selection fg=#ffffff bg=#0078d7
    let s:C04 = '#1C86EE' "СИНИЙ ЯРКИЙ visual
    let s:C05 = '#FFFFD7' "Подсветка курсора
    let s:C06 = '#EEEEEE' "БЛЕДНО-СЕРЫЙ подсветка границы 80
    let s:C07 = '#ADD8E6' "СВЕТЛО-ГОЛУБОЙ специальные символы
    let s:C08 = '#0000FF' "СИНИЙ константы
    let s:C09 = '#008000' "ЗЕЛЕНЫЙ строки
    let s:C10 = '#000080' "ТЕМНО-СИНИЙ keyword
    let s:C11 = '#FF0000' "КРАСНЫЙ ошибка
    let s:C12 = '#FFD700' "ЗОЛОТО (темно-желтый)
    let s:C13 = '#AF00D7' "СИРЕНЕВЫЙ
else "Console Vim
  let s:M = 'cterm'
    let s:C00 = '15'
    let s:C01 = '236'
    let s:C02 = '248'
    let s:C03 = '21'
    let s:C04 = '26'
    let s:C05 = '230'
    let s:C06 = '255'
    let s:C07 = '252'
    let s:C08 = '4'
    let s:C09 = '28'
    let s:C10 = '18'
    let s:C11 = '9'
    let s:C12 = '214'
    let s:C13 = '128'
endif

let s:TextCommon    = s:M.'bg='.s:C00.' '.s:M.'fg='.s:C01
let s:TextBold      = s:M.'bg='.s:C00.' '.s:M.'fg='.s:C01.' '.s:M.'=bold'
let s:TextInclude   = s:M.'bg='.s:C00.' '.s:M.'fg='.s:C10.' '.s:M.'=bold'
let s:TextGray      = s:M.'bg='.s:C00.' '.s:M.'fg='.s:C02
let s:TextSelect    = s:M.'bg='.s:C03.' '.s:M.'fg='.s:C00
let s:TextNumber    = s:M.'bg='.s:C00.' '.s:M.'fg='.s:C08
let s:TextString    = s:M.'bg='.s:C00.' '.s:M.'fg='.s:C09.' '.s:M.'=bold'
let s:TextKeyword   = s:M.'bg='.s:C00.' '.s:M.'fg='.s:C10
let s:TextError     = s:M.'bg='.s:C00.' '.s:M.'fg='.s:C11
let s:TextIdent     = s:M.'bg='.s:C00.' '.s:M.'fg='.s:C13
let s:TextStorage   = s:M.'bg='.s:C00.' '.s:M.'fg='.s:C13.' '.s:M.'=bold'
let s:PCursorLine   = s:M.'bg='.s:C05.' '.s:M.'fg=NONE '     .s:M.'=NONE'
let s:PCursorLineNR = s:M.'bg='.s:C05.' '.s:M.'fg='.s:C03.' '.s:M.'=bold'
let s:PanelMaxLen   = s:M.'bg='.s:C06.' '.s:M.'fg=NONE'
let s:PanelCursor   = s:M.'bg='.s:C02.' '.s:M.'fg='.s:C00
let s:PanelVisual   = s:M.'bg='.s:C04.' '.s:M.'fg='.s:C00.' '.s:M.'=bold'
let s:PTabline      = s:M.'bg='.s:C07.' '.s:M.'fg='.s:C00.' '.s:M.'=NONE'
let s:PTablineSel   = s:M.'bg='.s:C02.' '.s:M.'fg='.s:C00.' '.s:M.'=NONE'
let s:TSpecialKey   = s:M.'bg=NONE '     .s:M.'fg='.s:C07

exe 'hi Boolean          '.s:TextNumber
exe 'hi Character        '.s:TextCommon
exe 'hi ColorColumn      '.s:PanelMaxLen
exe 'hi Comment          '.s:TextGray
"exe 'hi Conceal guifg=tan3 ctermfg=88'
exe 'hi Conditional      '.s:TextInclude
exe 'hi Constant         '.s:TextNumber
exe 'hi Cursor           '.s:PanelCursor
exe 'hi CursorColumn     '.s:PCursorLine
exe 'hi CursorLine       '.s:PCursorLine
exe 'hi CursorLineNr     '.s:PCursorLineNR
exe 'hi Debug            '.s:TextCommon
exe 'hi Define           '.s:TextBold
exe 'hi Delimiter        '.s:TextCommon
exe 'hi DiffAdd          '.s:TextCommon
exe 'hi DiffChange       '.s:TextCommon
exe 'hi DiffDelete       '.s:TextKeyword
exe 'hi DiffText         '.s:TextCommon
"exe 'hi Directory        '.s:PanelActive
"exe 'hi EndOfBuffer guifg=tan3 ctermfg=88'
exe 'hi Error            '.s:TextError
"exe 'hi ErrorMsg         '.s:PanelActive
exe 'hi Exception        '.s:TextCommon
exe 'hi Float            '.s:TextNumber
"exe 'hi FoldColumn       '.s:PanelActive
"exe 'hi Folded           '.s:PanelActive
exe 'hi Function         '.s:TextBold
exe 'hi Identifier       '.s:TextIdent
exe 'hi Ignore           '.s:TextCommon
exe 'hi IncSearch        '.s:TextSelect
exe 'hi Include          '.s:TextInclude
exe 'hi Keyword          '.s:TextKeyword
exe 'hi Label            '.s:TextCommon
exe 'hi LineNr           '.s:TextGray
exe 'hi Macro            '.s:TextInclude
exe 'hi MatchParen       '.s:TextSelect
exe 'hi ModeMsg          '.s:TextCommon
exe 'hi MoreMsg          '.s:TextCommon
exe 'hi Normal           '.s:TextCommon
exe 'hi Number           '.s:TextNumber
exe 'hi Operator         '.s:TextCommon
exe 'hi Pmenu            '.s:PTabline
"exe 'hi PmenuSBar        '.s:PanelActive
exe 'hi PmenuSel         '.s:TextBold
"exe 'hi PmenuThumb       '.s:PanelActive
exe 'hi PreProc          '.s:TextKeyword
exe 'hi Precondit        '.s:TextCommon
"exe 'hi Question         '.s:PanelActive
"exe 'hi QuickFixLine guifg=tan3 ctermfg=88'
exe 'hi Repeat           '.s:TextInclude
exe 'hi Search           '.s:TextSelect
exe 'hi SignColumn       '.s:TextGray
exe 'hi Special          '.s:TextCommon
exe 'hi SpecialChar      '.s:TextCommon
exe 'hi SpecialComment   '.s:TextGray
exe 'hi SpecialKey       '.s:TSpecialKey
"exe 'hi SpellBad guifg=tan3 ctermfg=88'
"exe 'hi SpellCap guifg=gray24 ctermfg=0'
"exe 'hi SpellLocal guifg=gray24 ctermfg=0'
"exe 'hi SpellRare guifg=gray24 ctermfg=0'
exe 'hi Statement        '.s:TextInclude
"exe 'hi StatusLine       '.s:PanelActive
exe 'hi StatusLineNC     '.s:PTabline
"exe 'hi StatusLineTermNC '.s:PanelPassiv
"exe 'hi StatusLineTerm   '.s:PanelActive
exe 'hi StorageClass     '.s:TextStorage
exe 'hi String           '.s:TextString
exe 'hi Structure        '.s:TextInclude
exe 'hi TabLine          '.s:PTabline
exe 'hi TabLineSel       '.s:PTablineSel
exe 'hi Tag              '.s:TextCommon
exe 'hi Title            '.s:TextCommon
"exe 'hi Titled           '.s:PanelActive
exe 'hi Todo             '.s:TextCommon
"exe 'hi ToolbarButton guibg=gray80 guifg=gray24 ctermfg=0'
"exe 'hi ToolbarLine guifg=gray24 ctermfg=0'
exe 'hi Type             '.s:TextInclude
exe 'hi Typedef          '.s:TextBold
exe 'hi Underlined       '.s:TextCommon
"exe 'hi VertSplit        '.s:PVertSplit
exe 'hi Visual           '.s:PanelVisual
"exe 'hi VisualNOS guifg=gray24 ctermfg=0'
"exe 'hi WarningMsg       '.s:PanelActive
exe 'hi WildMenu         '.s:TextCommon

" XTabline theme
" -----------------------------------------------------------------------------
"hi XTFill guibg=#666666 ctermbg=236                           "цвет панели

"hi XTSelect guibg=white guifg=gray24 gui=NONE ctermbg=15     "активная вкладка
"hi XTSelectMod guibg=white guifg=gray24 gui=NONE ctermbg=15  "индикатор изменения
"hi XTNumSel guibg=gray60 guifg=white ctermbg=243 ctermfg=15  "номер активной вкладки

"hi XTHidden guibg=#EEEEEE guifg=#000000 ctermbg=254 ctermfg=0 cterm=underline gui=underline  "неактивная вкладка
"hi link XTHiddenMod XTHidden                                 "индикатор изменения
"hi link XTNum XTNumSel                                       "номер неактивной вкладки

"hi XTExtra guibg=#666666 ctermbg=236 guifg=#FFFFFF ctermfg=15 gui=NONE  "текущий режим
"hi link XTExtraMod XTExtra
"hi link XTCorner XTHidden                                    "название текущей папки
"hi XTVisibleMod guibg=gray75 guifg=white ctermbg=248 ctermfg=15 "несохраненные изменения (*)

"hi XTVisible guibg=gray75 guifg=white ctermbg=248 ctermfg=15 "неактивное окно

"hi link XTSpecial XTSelect                                   "специальные окна (NerdTree...)

