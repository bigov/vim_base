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
    let s:C00 = '#FFFFFF' "White БЕЛЫЙ
    let s:C01 = '#242424' "Black ЧЕРНЫЙ
    let s:C02 = '#8F8F8F' "Gray СЕРЫЙ
    let s:C03 = '#AF00D7' "СИРЕНЕВЫЙ
    let s:C04 = '#1C86EE' "Blue СИНИЙ
    let s:C05 = '#FFFFD7' "LLemon СВЕТЛО-ЛИМОННЫЙ (линия курсора)
    let s:C06 = '#EEEEEE' "LGray СВЕТЛО-СЕРЫЙ
    let s:C07 = '#ADD8E6' "LBlue СВЕТЛО-ГОЛУБОЙ
    let s:C09 = '#008000' "ЗЕЛЕНЫЙ
    let s:C10 = '#000080' "DBlue ТЕМНО-СИНИЙ
    let s:C11 = '#FF0000' "Red КРАСНЫЙ
    let s:C12 = '#FFD700' "Gold ТЕМНО-ЖЕЛТЫЙ
else "Console Vim
  let s:M = 'cterm'
    let s:C00 = '15'
    let s:C01 = '236'
    let s:C02 = '248'
    let s:C03 = '128'
    let s:C04 = '26'
    let s:C05 = '230'
    let s:C06 = '255'
    let s:C07 = '252'
    let s:C09 = '28'
    let s:C10 = '18'
    let s:C11 = '9'
    let s:C12 = '214'
endif
	
let s:BlackBOnWhite = s:M.'bg='.s:C00.' '.s:M.'fg='.s:C01.' '.s:M.'=bold'
let s:BlackOnWhite  = s:M.'bg='.s:C00.' '.s:M.'fg='.s:C01
let s:DBlueOnGold   = s:M.'bg='.s:C12.' '.s:M.'fg='.s:C10
let s:PanelCursor   = s:M.'bg='.s:C02.' '.s:M.'fg='.s:C00
let s:LBlueOn_      =                     s:M.'fg='.s:C07
let s:TextError     = s:M.'bg='.s:C00.' '.s:M.'fg='.s:C11
let s:TextGray      = s:M.'bg='.s:C00.' '.s:M.'fg='.s:C02
let s:TextIdent     = s:M.'bg='.s:C00.' '.s:M.'fg='.s:C03
let s:TextInclude   = s:M.'bg='.s:C00.' '.s:M.'fg='.s:C10.' '.s:M.'=bold'
let s:TextKeyword   = s:M.'bg='.s:C00.' '.s:M.'fg='.s:C10
let s:TextNumber    = s:M.'bg='.s:C00.' '.s:M.'fg='.s:C04.' '.s:M.'=bold'
let s:TextStorage   = s:M.'bg='.s:C00.' '.s:M.'fg='.s:C03.' '.s:M.'=bold'
let s:TextString    = s:M.'bg='.s:C00.' '.s:M.'fg='.s:C09.' '.s:M.'=bold'
let s:WhiteBOnBlue  = s:M.'bg='.s:C04.' '.s:M.'fg='.s:C00.' '.s:M.'=bold'
let s:WhiteOnBlue   = s:M.'bg='.s:C04.' '.s:M.'fg='.s:C00
let s:WhiteBOnGray  = s:M.'bg='.s:C02.' '.s:M.'fg='.s:C00.' '.s:M.'=bold'
let s:WhiteOnGray   = s:M.'bg='.s:C02.' '.s:M.'fg='.s:C00.' '.s:M.'=NONE'
let s:WhiteOnLBlue  = s:M.'bg='.s:C07.' '.s:M.'fg='.s:C00.' '.s:M.'=NONE'
let s:_OnLGray      = s:M.'bg='.s:C06
let s:_OnLLemon     = s:M.'bg='.s:C05

exe 'hi Boolean          '.s:TextNumber
exe 'hi Character        '.s:BlackOnWhite
exe 'hi ColorColumn      '.s:_OnLGray
exe 'hi Comment          '.s:TextGray
"exe 'hi Conceal guifg=tan3 ctermfg=88' TextInclude
exe 'hi Conditional      '.s:TextInclude
exe 'hi Constant         '.s:TextNumber
exe 'hi Cursor           '.s:PanelCursor
exe 'hi CursorColumn     '.s:_OnLLemon
exe 'hi CursorLine       '.s:_OnLLemon
exe 'hi CursorLineNr     '.s:DBlueOnGold
exe 'hi Debug            '.s:BlackOnWhite
exe 'hi Define           '.s:BlackBOnWhite
exe 'hi Delimiter        '.s:BlackOnWhite
exe 'hi DiffAdd          '.s:BlackOnWhite
exe 'hi DiffChange       '.s:BlackOnWhite
exe 'hi DiffDelete       '.s:TextKeyword
exe 'hi DiffText         '.s:BlackOnWhite
exe 'hi Directory        '.s:BlackOnWhite
exe 'hi EndOfBuffer guifg=#FFFFFF guibg=#FFFFFF'
exe 'hi Error            '.s:TextError
"exe 'hi ErrorMsg         '.s:PanelActive
exe 'hi Exception        '.s:BlackOnWhite
exe 'hi Float            '.s:TextNumber
"exe 'hi FoldColumn       '.s:PanelActive
"exe 'hi Folded           '.s:PanelActive
exe 'hi Function         '.s:BlackBOnWhite
exe 'hi Identifier       '.s:TextIdent
exe 'hi Ignore           '.s:BlackOnWhite
"exe 'hi IncSearch        '.s:WhiteOnBlue
exe 'hi Include          '.s:TextInclude
exe 'hi Keyword          '.s:TextKeyword
exe 'hi Label            '.s:BlackOnWhite
exe 'hi LineNr           '.s:TextGray
exe 'hi Macro            '.s:TextInclude
exe 'hi MatchParen       '.s:BlackBOnWhite
exe 'hi ModeMsg          '.s:BlackOnWhite
exe 'hi MoreMsg          '.s:BlackOnWhite
exe 'hi Normal           '.s:BlackOnWhite
exe 'hi Number           '.s:TextNumber
exe 'hi Operator         '.s:BlackOnWhite
exe 'hi Pmenu            '.s:WhiteOnLBlue
"exe 'hi PmenuSBar        '.s:PanelActive
exe 'hi PmenuSel         '.s:DBlueOnGold
"exe 'hi PmenuThumb       '.s:PanelActive
exe 'hi PreProc          '.s:TextKeyword
exe 'hi Precondit        '.s:BlackOnWhite
"exe 'hi Question         '.s:PanelActive
"exe 'hi QuickFixLine guifg=tan3 ctermfg=88'
exe 'hi Repeat           '.s:TextInclude
exe 'hi Search           '.s:WhiteBOnGray
exe 'hi SignColumn       '.s:TextGray
exe 'hi Special          '.s:BlackOnWhite
exe 'hi SpecialChar      '.s:BlackOnWhite
exe 'hi SpecialComment   '.s:TextGray
exe 'hi SpecialKey       '.s:LBlueOn_
"exe 'hi SpellBad guifg=tan3 ctermfg=88'
"exe 'hi SpellCap guifg=gray24 ctermfg=0'
"exe 'hi SpellLocal guifg=gray24 ctermfg=0'
"exe 'hi SpellRare guifg=gray24 ctermfg=0'
exe 'hi Statement        '.s:TextInclude
"exe 'hi StatusLine       '.s:PanelActive
exe 'hi StatusLineNC     '.s:WhiteOnLBlue
"exe 'hi StatusLineTermNC '.s:PanelPassiv
"exe 'hi StatusLineTerm   '.s:PanelActive
exe 'hi StorageClass     '.s:TextStorage
exe 'hi String           '.s:TextString
exe 'hi Structure        '.s:TextInclude
exe 'hi TabLine          '.s:WhiteOnLBlue
exe 'hi TabLineSel       '.s:WhiteOnGray
exe 'hi Tag              '.s:BlackOnWhite
exe 'hi Title            '.s:BlackOnWhite
"exe 'hi Titled           '.s:PanelActive
exe 'hi Todo             '.s:BlackOnWhite
"exe 'hi ToolbarButton guibg=gray80 guifg=gray24 ctermfg=0'
"exe 'hi ToolbarLine guifg=gray24 ctermfg=0'
exe 'hi Type             '.s:TextInclude
exe 'hi Typedef          '.s:BlackBOnWhite
exe 'hi Underlined       '.s:BlackOnWhite
"exe 'hi VertSplit        '.s:PVertSplit
exe 'hi Visual           '.s:WhiteBOnBlue
"exe 'hi VisualNOS guifg=gray24 ctermfg=0'
"exe 'hi WarningMsg       '.s:PanelActive
exe 'hi WildMenu         '.s:BlackOnWhite

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

