"=============================================================================
"
" Вспомогательные функции для работы от 04.01.2022
"
"=============================================================================

" Файлы конфигов Вима делать только в формате unix
au BufRead,BufNewFile *.vim setlocal ff=unix

" Автоматическое назначение формата и кодировки для пакетных файлов MS-Windows
au BufRead,BufNewFile *.\(cmd\|bat\) silent exec 'e ++enc=cp866 %' | setlocal ff=dos

function! AutoHighlightToggle()
  let @/ = ''
  if exists('#auto_highlight')
    au! auto_highlight
    augroup! auto_highlight
    setl updatetime=4000
    echo 'Highlight current word: off'
    return 0
  else
    augroup auto_highlight
      au!
      au CursorHold * let @/ = '\V\<'.escape(expand('<cword>'), '\').'\>'
    augroup end
    setl updatetime=500
    echo 'Highlight current word: ON'
    return 1
  endif
endfunction

" Команда для отображение настроек текущей цветовой схемы
command! ShowCurrentColors :call s:ShowCurrentColors()
function! s:ShowCurrentColors()
  highlight "8:SpecialKey,@:NonText,d:Directory,e:ErrorMsg,i:IncSearch,
    \l:Search,m:MoreMsg,M:ModeMsg,n:LineNr,r:Question,s:StatusLine,
    \S:StatusLineNC,c:VertSplit,t:Title,v:Visual,w:WarningMsg,W:WildMenu,
    \f:Folded,F:FoldColumn,A:DiffAdd,C:DiffChange,D:DiffDelete,T:DiffText,
    \>:SignColumn,B:SpellBad,P:SpellCap,R:SpellRare,L:SpellLocal,-:Conceal,
    \+:Pmenu,=:PmenuSel,x:PmenuSbar,X:PmenuThumb"
endfunction

