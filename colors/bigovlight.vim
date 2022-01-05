" local syntax file - set colors
" Vim color file
" Last Change: 05.01.2022

set background=light

hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "bigovlight"

hi Normal guibg=white guifg=gray16 gui=NONE ctermbg=15 ctermfg=235

if &t_Co > 8
" какие-нибудь настройки
endif

hi Statement term=bold cterm=bold ctermfg=124 gui=bold guifg=gray24
" Разделитель окон
hi VertSplit ctermfg=252 ctermbg=15 guifg=gray80 guibg=white
hi SignColumn guibg=white guifg=gray80 ctermfg=67 ctermbg=15

" Колонка с номерами строк
hi LineNr ctermfg=250 ctermbg=15 guifg=gray80 guibg=white

" Подсветка номера строки на линии курсора
hi CursorLine cterm=NONE gui=NONE ctermbg=NONE ctermfg=NONE guibg=gray96 guifg=NONE
hi CursorLineNr cterm=bold ctermfg=25 ctermbg=227 guifg=dodgerblue guibg=lightcyan1 gui=bold
hi CursorColumn guifg=NONE guibg=gray96 ctermfg=NONE ctermbg=NONE

" Линия ярлычков файлов
hi TabLine guifg=gray32 guibg=gray90 ctermfg=0
hi TabLineFill gui=NONE guifg=white guibg=gray90 ctermfg=0
hi TabLineSel gui=NONE guifg=gray24 ctermfg=0

" Строка статуса
hi StatusLine   guibg=black guifg=gray80 ctermbg=237 ctermfg=252
hi StatusLineNC guibg=white guifg=gray80 ctermbg=15  ctermfg=252
hi StatusLineTerm   guibg=gray80 guifg=black ctermbg=252 ctermfg=237
hi StatusLineTermNC guibg=gray80 guifg=white ctermbg=252 ctermfg=15

" Подсветка вертикальной границы 80 символов
hi ColorColumn ctermbg=230 ctermfg=0 guibg=cornsilk guifg=NONE

" Подсветка пробелов и табов
hi SpecialKey guifg=lightblue3 ctermfg=252

" Подсветка элементов синтаксиса
hi Comment ctermfg=246  guifg=#909090 gui=italic
hi Function ctermfg=88 cterm=none
hi Type ctermfg=24 guifg=turquoise4
hi String ctermfg=26 guifg=#1386C6 cterm=italic
hi PreProc ctermfg=33 guifg=#6F05B0
hi Keyword ctermfg=64 cterm=bold
hi Conditional cterm=bold ctermfg=160 guifg=red3 gui=bold
hi Operator cterm=none ctermfg=21
hi Include ctermfg=26 guifg=purple gui=bold
hi Identifier ctermfg=26 cterm=bold guifg=#444488 gui=bold
hi Special ctermfg=26 guifg=#005fd7
hi Number guifg=red gui=bold ctermfg=124
hi Label guifg=blue4
hi ColorColumn guifg=tan3 ctermfg=88
hi Conceal guifg=tan3 ctermfg=88
hi Constant guifg=tan3 ctermfg=88
hi Cursor guibg=lightblue guifg=blue ctermbg=250 ctermfg=0
hi DiffAdd guifg=tan3 ctermfg=88
hi DiffChange guifg=tan3 ctermfg=88
hi DiffDelete guifg=tan3 ctermfg=88
hi DiffText guibg=limegreen guifg=gray24 ctermfg=88
hi Directory guifg=tan3 ctermfg=88
hi EndOfBuffer guifg=tan3 ctermfg=88
hi Error guibg=salmon guifg=NONE ctermbg=1 ctermfg=15
hi ErrorMsg guibg=firebrick guifg=yellow ctermbg=1 ctermfg=15
hi FoldColumn guifg=tan3 ctermfg=88
hi Folded guifg=tan3 ctermfg=88
hi Ignore guifg=tan3 ctermfg=88
hi IncSearch guifg=gray36 guibg=lawngreen ctermbg=227 ctermfg=1 term=reverse
hi MatchParen guifg=tan3 ctermfg=88
hi ModeMsg guifg=gray24 ctermfg=235
hi MoreMsg guifg=gray24 ctermfg=235
hi NonText guifg=tan3 ctermfg=88
hi Pmenu guifg=tan3 ctermfg=88
hi PmenuSbar guifg=tan3 ctermfg=88
hi PmenuSel guifg=tan3 ctermfg=88
hi PmenuThumb guifg=tan3 ctermfg=88
hi Question guifg=tan3 ctermfg=88
hi QuickFixLine guifg=tan3 ctermfg=88
hi Search guifg=NONE guibg=lawngreen ctermbg=227 ctermfg=1
hi SpellBad guifg=tan3 ctermfg=88
hi SpellCap guifg=gray24 ctermfg=0
hi SpellLocal guifg=gray24 ctermfg=0
hi SpellRare guifg=gray24 ctermfg=0
hi Title guifg=gray24 ctermfg=0
hi Todo guifg=gray24 ctermfg=0
hi ToolbarButton guibg=gray80 guifg=gray24 ctermfg=0
hi ToolbarLine guifg=gray24 ctermfg=0
hi Underlined guifg=gray24 ctermfg=0
hi Visual guifg=gray24 ctermfg=0
hi VisualNOS guifg=gray24 ctermfg=0
hi WarningMsg guifg=orange3 ctermfg=202
hi WildMenu guifg=gray24 ctermfg=0

"vim: tw=0 ts=4 sw=4
