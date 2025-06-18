
highlight clear
if exists("syntax_on")
  syntax reset
endif

let background='dark'
let g:colors_name = 'mypaper'

function!  Coloring(group,guibg,guifg,gui,ctermbg,ctermfg)
  let highlightstr = 'highlight ' . a:group . ' '
  let highlightstr .= 'guibg=' . a:guibg . ' '
  let highlightstr .= 'guifg=' . a:guifg . ' '
  let highlightstr .= 'gui=' . a:gui . ' '
  let highlightstr .= 'ctermbg=' . a:ctermbg . ' '
  let highlightstr .= 'ctermfg=' . a:ctermfg . ' '
  let highlightstr .= 'cterm=' . a:gui . ' '
  execute highlightstr
endfunction

call Coloring("Normal","#1c1c1c","#585858","NONE","234","240") " set background
call Coloring("NonText","#1c1c1c","#1c1c1c","NONE","234","234") " noShow tilda
call Coloring("VertSplit","#1c1c1c","#1c1c1c","NONE","235","235") " noShow vertsplit
call Coloring("LineNr","#1c1c1c","#585858","NONE","234","240")
call Coloring("SignColumn","#1c1c1c","#585858","NONE","234","240")
call Coloring("TabLine","#1c1c1c","#585858","NONE","234","240")
call Coloring("CursorLineNr","#121212","#808080","bold","233","245")
call Coloring("Comment","NONE","383838","italic","NONE","236")
call Coloring("Number","NONE","#5faf5f","NONE","NONE","71")
call Coloring("Character","NONE","#585858","NONE","NONE","240")
call Coloring("Float","NONE","#5faf5f","NONE","NONE","71")
call Coloring("String","NONE","#af87d7","NONE","NONE","140")
call Coloring("Constant","NONE","#585858","NONE","NONE","240")
call Coloring("Boolean","NONE","#5faf5f","NONE","NONE","71")
call Coloring("Function","NONE","#ff5faf","NONE","NONE","205")
call Coloring("Conditional","NONE","#00afaf","NONE","NONE","37")
call Coloring("Repeat","NONE","#00afaf","NONE","NONE","37")
call Coloring("Label","NONE","#00afaf","NONE","NONE","37")
call Coloring("Operator","NONE","#585858","NONE","NONE","240")
call Coloring("Keyword","NONE","#585858","NONE","NONE","240")
call Coloring("Exception","NONE","#00afaf","NONE","NONE","37")
call Coloring("Special","NONE","#808080","NONE","NONE","245")
call Coloring("Tag","NONE","#af87d7","NONE","NONE","140")
call Coloring("MatchParen","NONE","#00afaf","NONE","NONE","37")

call Coloring("CursorLine","#121212","NONE","NONE","233","NONE")
call Coloring("CursorColumn","NONE","NONE","NONE","NONE","NONE")

call Coloring("Pmenu","#262626","#8a8a8a","NONE","235","245" )
call Coloring("PmenuSbar","#262626","#8a8a8a","NONE","235","245" )
call Coloring("PmenuSel","#303030","#8a8a8a","NONE","236","245" )
call Coloring("Error","#1c1c1c","#870000","NONE","234","88" )
call Coloring("Visual","121212","#8a8a8a","NONE","233","245" )

" == NerdTree = "
call Coloring("NERDTreeCWD","NONE","#585858","NONE","NONE","240")
call Coloring("NERDTreeOpenable","NONE","#808080","NONE","NONE","245")
call Coloring("NERDTreeClosable","NONE","#585858","NONE","NONE","240")
call Coloring("NERDTreeDir","NONE","#5faf5f","NONE","NONE","71")


" == JS == "
call Coloring("jsVariableDef","NONE","#ff5faf","NONE","NONE","205")
call Coloring("jsStorageClass","NONE","#00afaf","NONE","NONE","37")
call Coloring("jsArrowFunction","NONE","#808080","NONE","NONE","245")
call Coloring("jsConditional","NONE","#00afaf","NONE","NONE","37")
call Coloring("jsFuncArgs","NONE","#808080","NONE","NONE","245")
call Coloring("jsSwitchBlock","NONE","#808080","NONE","NONE","245")
call Coloring("jsReturn","NONE","#00afaf","NONE","NONE","37")
call Coloring("jsExport","NONE","#808080","NONE","NONE","245")
call Coloring("jsExportDefault","NONE","#00afaf","NONE","NONE","37")
call Coloring("jsImport","NONE","#808080","NONE","NONE","245")
call Coloring("jsFrom","NONE","#808080","NONE","NONE","245")
call Coloring("jsArrowFuncArgs","NONE","#808080","NONE","NONE","245")
call Coloring("jsFuncParens","NONE","#808080","NONE","NONE","245")
call Coloring("jsFuncBraces","NONE","#808080","NONE","NONE","245")
call Coloring("jsFuncBlock","NONE","#808080","NONE","NONE","245")
call Coloring("jsParen","NONE","#585858","NONE","NONE","240")
call Coloring("jsParens","NONE","#808080","NONE","NONE","245")
call Coloring("jsOperator","NONE","#808080","NONE","NONE","245")
call Coloring("jsObject","NONE","#808080","NONE","NONE","245")
call Coloring("jsObjectBraces","NONE","#808080","NONE","NONE","245")
call Coloring("jsIfElseBraces","NONE","#808080","NONE","NONE","245")
call Coloring("jsSwitchBraces","NONE","#808080","NONE","NONE","245")
call Coloring("jsBracket","NONE","#808080","NONE","NONE","245")
call Coloring("jsBrackets","NONE","#808080","NONE","NONE","245")
call Coloring("jsObjectSeparator","NONE","#808080","NONE","NONE","245")
call Coloring("jsObjectKey","NONE","#af87d7","NONE","NONE","140")
call Coloring("jsObjectColon","NONE","#5faf5f","NONE","NONE","71")
call Coloring("jsNoise","NONE","#808080","NONE","NONE","245")
call Coloring("jsFuncCall","NONE","585858","NONE","NONE","240")
call Coloring("jsThis","NONE","#585858","NONE","NONE","240")
call Coloring("jsNull","NONE","#5faf5f","NONE","NONE","71")
call Coloring("jsUndefined","NONE","#5faf5f","NONE","NONE","71")
call Coloring("jsTernaryIfOperator","NONE","#808080","NONE","NONE","245")
call Coloring("jsDot","NONE","#808080","NONE","NONE","245")
call Coloring("jsClassNoise","NONE","#808080","NONE","NONE","245")
call Coloring("jsClassKeyword","NONE","#00afaf","NONE","NONE","37")
call Coloring("jsExtendsKeyword","NONE","#00afaf","NONE","NONE","37")
call Coloring("jsClassDefinition","NONE","#afd700","NONE","NONE","148")

call Coloring("jsxTag","NONE","#808080","NONE","NONE","245")
call Coloring("jsxOpenTag","NONE","#808080","NONE","NONE","245")
call Coloring("jsxOpenPunct","NONE","#808080","NONE","NONE","245")
call Coloring("jsxCloseString","NONE","#808080","NONE","NONE","245")
call Coloring("jsxTagName","NONE","#585858","NONE","NONE","240")
call Coloring("jsxAttrib","NONE","#5faf5f","NONE","NONE","71")
call Coloring("jsxBraces","NONE","#00afaf","NONE","NONE","37")

" == Css == "
call Coloring("cssValueLength","NONE","#5faf5f","NONE","NONE","71")
call Coloring("cssUnitDecorators","NONE","#5faf5f","NONE","NONE","71")
call Coloring("cssAttrRegion","NONE","#af87d7","NONE","NONE","140")
call Coloring("cssDefinition","NONE","#af87d7","NONE","NONE","140")
call Coloring("cssFontAttr","NONE","#af87d7","NONE","NONE","140")
call Coloring("cssTagName","NONE","#585858","NONE","NONE","240")
call Coloring("cssBraces","NONE","#808080","NONE","NONE","245")
call Coloring("cssFontProp","NONE","#808080","NONE","NONE","245")
call Coloring("cssNoise","NONE","#808080","NONE","NONE","245")
call Coloring("cssClassName","NONE","#5faf5f","NONE","NONE","71")
call Coloring("cssPositioningProp","NONE","#808080","NONE","NONE","245")
call Coloring("cssPositioningAttr","NONE","#808080","NONE","NONE","245")
call Coloring("cssMediaProp","NONE","#808080","NONE","NONE","245")
call Coloring("cssBoxProp","NONE","#808080","NONE","NONE","245")
call Coloring("cssBoxAttr","NONE","#808080","NONE","NONE","245")
call Coloring("cssGridProp","NONE","#808080","NONE","NONE","245")
call Coloring("cssBackgroundProp","NONE","#808080","NONE","NONE","245")
call Coloring("cssColor","NONE","#808080","NONE","NONE","245")
call Coloring("cssTextProp","NONE","#808080","NONE","NONE","245")
call Coloring("cssColor","NONE","#ffaf00","NONE","NONE","214")
call Coloring("cssUnitDecorators","NONE","#ffaf00","NONE","NONE","214")

