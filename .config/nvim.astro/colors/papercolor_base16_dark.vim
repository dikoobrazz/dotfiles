" Vim/Neovim colorscheme
" Name: PaperColor Base16 Dark
" Author: Jon Leopard (http://github.com/jonleopard) based on PaperColor Theme
" Converted from Sublime Text .tmTheme format
" Maintainer: [Your Name]

set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "papercolor_base16_dark"

" === Color Definitions ===
" Extracted directly from original XML to preserve exact colors
let s:bg           = "#1c1c1c"  " Main background
" let s:fg           = "#808080"  " Main foreground
let s:fg           = "#9b9ea4"  " Main foreground
let s:comment      = "#383838"  " Comments
let s:selection    = "#111111"  " Visual selection
let s:line_hl      = "#222222"  " Current line highlight
let s:gutter_bg    = "#1c1c1c"  " Gutter background
let s:gutter_fg    = "#383838"  " Gutter foreground
" let s:cursor       = "#808080"  " Cursor color
let s:cursor       = "#9b9ea4"  " Cursor color
let s:arg          = "#5faf5f"  " HTML args
let s:tag          = "#9b9ea4"  " HTML tag

" Syntax colors from original scheme
let s:keyword      = "#00afaf"  " Keywords, statements
let s:function     = "#ff5faf"  " Functions, methods
let s:string       = "#af87d7"  " Strings, inherited class
let s:number       = "#5faf5f"  " Numbers, constants, boolean
let s:type         = "#afd700"  " Classes, types
let s:variable     = "#585858"  " Variables, tags
let s:support      = "#ffaf00"  " Support functions, special
let s:label        = "#5f8787"  " Labels
let s:meta_class   = "#d0d0d0"  " Meta class
" let s:operator     = "#808080"  " Operators, delimiters
let s:operator     = "#9b9ea4"  " Operators, delimiters
let s:escape       = "#ffaf00"  " Escape characters, regex
let s:embedded     = "#00afaf"  " Embedded code
let s:invalid_bg   = "#585858"  " Invalid/error background
let s:invalid_fg   = "#d0d0d0"  " Invalid/error foreground
let s:deprecated   = "#5f8787"  " Deprecated background
let s:unimpl       = "#d7af5f"  " Unimplemented background
let s:separator_bg = "#5faf00"  " Separator background

" === UI Elements ===
exe "hi Normal       guifg=" . s:fg . " guibg=" . s:bg . " ctermfg=244 ctermbg=234"
exe "hi Cursor       guifg=" . s:bg . " guibg=" . s:cursor . " ctermfg=234 ctermbg=244"
exe "hi CursorLine   guibg=" . s:line_hl . " ctermbg=237"
exe "hi CursorColumn guibg=" . s:line_hl . " ctermbg=237"
exe "hi LineNr       guifg=" . s:gutter_fg . " guibg=" . s:gutter_bg . " ctermfg=179 ctermbg=125"
exe "hi CursorLineNr guifg=" . s:gutter_fg . " guibg=" . s:gutter_bg . " ctermfg=179 ctermbg=125 gui=bold cterm=bold"
exe "hi VertSplit    guifg=" . s:gutter_bg . " guibg=" . s:gutter_bg . " ctermfg=125 ctermbg=125"
exe "hi StatusLine   guifg=" . s:meta_class . " guibg=" . s:gutter_bg . " ctermfg=252 ctermbg=125"
exe "hi StatusLineNC guifg=" . s:fg . " guibg=" . s:comment . " ctermfg=244 ctermbg=237"
exe "hi Visual       guifg=NONE guibg=" . s:selection . " ctermbg=233"
exe "hi Search       guifg=" . s:bg . " guibg=" . s:gutter_fg . " ctermfg=234 ctermbg=179"
exe "hi IncSearch    guifg=" . s:bg . " guibg=" . s:function . " ctermfg=234 ctermbg=205"
exe "hi MatchParen   guifg=" . s:bg . " guibg=" . s:gutter_fg . " ctermfg=234 ctermbg=179 gui=bold cterm=bold"

" Menu and popup colors
exe "hi Pmenu        guifg=" . s:fg . " guibg=" . s:comment . " ctermfg=244 ctermbg=237"
exe "hi PmenuSel     guifg=" . s:bg . " guibg=" . s:gutter_fg . " ctermfg=234 ctermbg=179"
exe "hi PmenuSbar    guibg=" . s:line_hl . " ctermbg=237"
exe "hi PmenuThumb   guibg=" . s:fg . " ctermbg=244"

" Tabs
exe "hi TabLine      guifg=" . s:fg . " guibg=" . s:comment . " ctermfg=244 ctermbg=237"
exe "hi TabLineFill  guifg=" . s:bg . " guibg=" . s:bg . " ctermfg=237 ctermbg=237"
exe "hi TabLineSel   guifg=" . s:meta_class . " guibg=" . s:bg . " ctermfg=252 ctermbg=234"

" === Syntax Highlighting ===
" Comments (italic style from original)
exe "hi Comment      guifg=" . s:comment . " gui=italic ctermfg=237 cterm=italic"

" Constants and literals
exe "hi Constant     guifg=" . s:number . " ctermfg=77"
exe "hi String       guifg=" . s:string . " ctermfg=140"
exe "hi Character    guifg=" . s:string . " ctermfg=140"
exe "hi Number       guifg=" . s:number . " ctermfg=77"
exe "hi Boolean      guifg=" . s:number . " ctermfg=77"
exe "hi Float        guifg=" . s:number . " ctermfg=77"

" Identifiers and functions
exe "hi Identifier   guifg=" . s:variable . " ctermfg=240"
exe "hi Function     guifg=" . s:function . " ctermfg=205"

" Statements and keywords
exe "hi Statement    guifg=" . s:keyword . " ctermfg=37"
exe "hi Conditional  guifg=" . s:keyword . " ctermfg=37"
exe "hi Repeat       guifg=" . s:keyword . " ctermfg=37"
exe "hi Label        guifg=" . s:label . " ctermfg=66"
exe "hi Operator     guifg=" . s:operator . " ctermfg=244"
exe "hi Keyword      guifg=" . s:keyword . " ctermfg=37"
exe "hi Exception    guifg=" . s:keyword . " ctermfg=37"

" Preprocessor
exe "hi PreProc      guifg=" . s:support . " ctermfg=214"
exe "hi Include      guifg=" . s:support . " ctermfg=214"
exe "hi Define       guifg=" . s:support . " ctermfg=214"
exe "hi Macro        guifg=" . s:support . " ctermfg=214"
exe "hi PreCondit    guifg=" . s:support . " ctermfg=214"

" Types and structures
exe "hi Type         guifg=" . s:type . " ctermfg=148"
exe "hi StorageClass guifg=" . s:keyword . " ctermfg=37"
exe "hi Structure    guifg=" . s:type . " ctermfg=148"
exe "hi Typedef      guifg=" . s:type . " ctermfg=148"

" Special elements
exe "hi Special      guifg=" . s:support . " ctermfg=214"
exe "hi SpecialChar  guifg=" . s:escape . " ctermfg=214"
exe "hi Tag          guifg=" . s:variable . " ctermfg=240"
exe "hi Delimiter    guifg=" . s:operator . " ctermfg=244"
exe "hi SpecialComment guifg=" . s:comment . " ctermfg=237"
exe "hi Debug        guifg=" . s:support . " ctermfg=214"

" === Error and Warning States ===
exe "hi Error        guifg=" . s:invalid_fg . " guibg=" . s:invalid_bg . " ctermfg=252 ctermbg=240"
exe "hi ErrorMsg     guifg=" . s:invalid_fg . " guibg=" . s:invalid_bg . " ctermfg=252 ctermbg=240"
exe "hi WarningMsg   guifg=" . s:invalid_fg . " guibg=" . s:deprecated . " ctermfg=252 ctermbg=66"
exe "hi Todo         guifg=" . s:invalid_fg . " guibg=" . s:unimpl . " ctermfg=252 ctermbg=179"

" === Diff Highlighting ===
exe "hi DiffAdd      guifg=" . s:string . " guibg=" . s:bg . " ctermfg=140 ctermbg=234"
exe "hi DiffChange   guifg=" . s:embedded . " guibg=" . s:bg . " ctermfg=37 ctermbg=234"
exe "hi DiffDelete   guifg=" . s:variable . " guibg=" . s:bg . " ctermfg=240 ctermbg=234"
exe "hi DiffText     guifg=" . s:function . " guibg=" . s:line_hl . " ctermfg=205 ctermbg=237"

" === Markup Languages (Markdown, HTML) ===
exe "hi Title        guifg=" . s:function . " gui=bold ctermfg=205 cterm=bold"
exe "hi markdownHeading guifg=" . s:function . " gui=bold ctermfg=205 cterm=bold"
exe "hi markdownBold guifg=" . s:type . " gui=bold ctermfg=148 cterm=bold"
exe "hi markdownItalic guifg=" . s:embedded . " gui=italic ctermfg=37 cterm=italic"
exe "hi markdownCode guifg=" . s:string . " ctermfg=140"
exe "hi markdownCodeBlock guifg=" . s:string . " ctermfg=140"
exe "hi markdownLink guifg=" . s:variable . " ctermfg=240"
exe "hi markdownUrl  guifg=" . s:number . " ctermfg=77"
exe "hi markdownListMarker guifg=" . s:variable . " ctermfg=240"

" HTML
exe "hi htmlTag      guifg=" . s:tag . "      ctermfg=240"
exe "hi htmlEndTag   guifg=" . s:tag . "      ctermfg=240"
exe "hi htmlTagName  guifg=" . s:tag . "      ctermfg=240"
exe "hi htmlArg      guifg=" . s:arg . "      ctermfg=240"
exe "hi htmlSpecialChar guifg=" . s:escape . " ctermfg=214"

" CSS
exe "hi cssClassName guifg=" . s:type . " ctermfg=148"
exe "hi cssIdentifier guifg=" . s:function . " ctermfg=205"
exe "hi cssColor     guifg=" . s:support . " ctermfg=214"
exe "hi cssValueLength guifg=" . s:number . " ctermfg=77"
exe "hi cssValueNumber guifg=" . s:number . " ctermfg=77"
exe "hi cssProp      guifg=" . s:variable . " ctermfg=240"

" === Additional UI Elements ===
exe "hi Folded       guifg=" . s:fg . " guibg=" . s:comment . " ctermfg=244 ctermbg=237"
exe "hi FoldColumn   guifg=" . s:fg . " guibg=" . s:bg . " ctermfg=244 ctermbg=234"
exe "hi SignColumn   guifg=" . s:fg . " guibg=" . s:bg . " ctermfg=244 ctermbg=234"
exe "hi ColorColumn  guibg=" . s:line_hl . " ctermbg=237"
exe "hi NonText      guifg=" . s:gutter_fg . " ctermfg=179"
exe "hi SpecialKey   guifg=" . s:gutter_fg . " ctermfg=179"
exe "hi Directory    guifg=" . s:type . " ctermfg=148"
exe "hi Question     guifg=" . s:number . " ctermfg=77"
exe "hi MoreMsg      guifg=" . s:number . " ctermfg=77"
exe "hi ModeMsg      guifg=" . s:fg . " ctermfg=244"

" Spell checking
exe "hi SpellBad     guisp=" . s:invalid_bg . " gui=undercurl cterm=underline"
exe "hi SpellCap     guisp=" . s:label . " gui=undercurl cterm=underline"
exe "hi SpellLocal   guisp=" . s:gutter_fg . " gui=undercurl cterm=underline"
exe "hi SpellRare    guisp=" . s:support . " gui=undercurl cterm=underline"

" === Расширенная поддержка HTML и шаблонных языков ===

" Основные HTML группы (стандартные и альтернативные названия)
exe "hi htmlTag          guifg=" . s:variable . " ctermfg=240"
exe "hi htmlEndTag       guifg=" . s:variable . " ctermfg=240"
exe "hi htmlTagName      guifg=" . s:variable . " ctermfg=240"
exe "hi htmlTagN         guifg=" . s:variable . " ctermfg=240"
exe "hi htmlSpecialTagName guifg=" . s:variable . " ctermfg=240"
exe "hi htmlArg          guifg=" . s:number . " ctermfg=77"
exe "hi htmlString       guifg=" . s:string . " ctermfg=140"
exe "hi htmlValue        guifg=" . s:string . " ctermfg=140"
exe "hi htmlSpecialChar  guifg=" . s:escape . " ctermfg=214"

" XML группы (используются некоторыми HTML плагинами)
exe "hi xmlTag           guifg=" . s:variable . " ctermfg=240"
exe "hi xmlTagName       guifg=" . s:variable . " ctermfg=240"
exe "hi xmlEndTag        guifg=" . s:variable . " ctermfg=240"
exe "hi xmlAttrib        guifg=" . s:number . " ctermfg=77"
exe "hi xmlString        guifg=" . s:string . " ctermfg=140"
exe "hi xmlEqual         guifg=" . s:operator . " ctermfg=244"

" Дополнительные HTML группы для различных плагинов
exe "hi htmlPreStmt      guifg=" . s:support . " ctermfg=214"
exe "hi htmlPreError     guifg=" . s:invalid_fg . " guibg=" . s:invalid_bg . " ctermfg=252 ctermbg=240"
exe "hi htmlPreProc      guifg=" . s:support . " ctermfg=214"
exe "hi htmlPreAttr      guifg=" . s:number . " ctermfg=77"
exe "hi htmlPreProcAttrName guifg=" . s:number . " ctermfg=77"

" === Django Templates поддержка ===
exe "hi djangoTagBlock   guifg=" . s:variable . " ctermfg=240"
exe "hi djangoVarBlock   guifg=" . s:variable . " ctermfg=240"
exe "hi djangoStatement  guifg=" . s:keyword . " ctermfg=37"
exe "hi djangoFilter     guifg=" . s:function . " ctermfg=205"
exe "hi djangoArgument   guifg=" . s:string . " ctermfg=140"
exe "hi djangoComment    guifg=" . s:comment . " gui=italic ctermfg=237 cterm=italic"

" === Jinja2 поддержка ===
exe "hi jinjaTagBlock    guifg=" . s:variable . " ctermfg=240"
exe "hi jinjaVarBlock    guifg=" . s:variable . " ctermfg=240"
exe "hi jinjaString      guifg=" . s:string . " ctermfg=140"
exe "hi jinjaNumber      guifg=" . s:number . " ctermfg=77"
exe "hi jinjaStatement   guifg=" . s:keyword . " ctermfg=37"
exe "hi jinjaComment     guifg=" . s:comment . " gui=italic ctermfg=237 cterm=italic"
exe "hi jinjaFilter      guifg=" . s:function . " ctermfg=205"
exe "hi jinjaVariable    guifg=" . s:variable . " ctermfg=240"
exe "hi jinjaAttribute   guifg=" . s:number . " ctermfg=77"
exe "hi jinjaFunction    guifg=" . s:function . " ctermfg=205"

" === Альтернативные группы для совместимости ===
" Некоторые плагины используют эти группы вместо стандартных
exe "hi Tag              guifg=" . s:variable . " ctermfg=240"
exe "hi TagName          guifg=" . s:variable . " ctermfg=240"
exe "hi Attribute        guifg=" . s:number . " ctermfg=77"
exe "hi AttributeName    guifg=" . s:number . " ctermfg=77"

" === Treesitter поддержка (для Neovim) ===
if has('nvim')
  " HTML Treesitter groups
  hi! link @tag.html htmlTagName
  hi! link @tag.attribute.html htmlArg
  hi! link @tag.delimiter.html htmlTag
  hi! link @string.html String
  hi! link @text.html Normal
  
  " Общие Treesitter группы
  hi! link @tag Tag
  hi! link @tag.attribute Attribute
  hi! link @tag.delimiter htmlTag
endif

" === Принудительная настройка базовых групп ===
" На случай, если HTML элементы попадают в общие группы
exe "hi Identifier       guifg=" . s:variable . " ctermfg=240"
exe "hi Delimiter        guifg=" . s:operator . " ctermfg=244"
exe "hi Special          guifg=" . s:support . " ctermfg=214"

" === Neovim Specific ===
if has('nvim')
  exe "hi NormalFloat  guifg=" . s:fg . " guibg=" . s:comment . " ctermfg=244 ctermbg=237"
  exe "hi FloatBorder  guifg=" . s:gutter_bg . " guibg=" . s:comment . " ctermfg=125 ctermbg=237"
  
  " LSP and Treesitter support
  hi! link @comment Comment
  hi! link @string String
  hi! link @function Function
  hi! link @keyword Keyword
  hi! link @number Number
  hi! link @boolean Boolean
  hi! link @type Type
  hi! link @parameter Identifier
  hi! link @variable Identifier
  hi! link @constant Constant
endif

hi htmlTag          guifg=#9b9ea4 ctermfg=240
hi htmlEndTag       guifg=#9b9ea4 ctermfg=240
hi WinSeparator     guifg=bg ctermfg=240
