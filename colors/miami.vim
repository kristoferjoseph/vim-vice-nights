" Vim color file

highlight clear
set background=dark
if exists('syntax_on') | syntax reset | endif

set t_Co=256
let g:colors_name = "miami"

" Color definitions
let s:white = [231, "#ffffff"]
let s:mid_gray = [102, "#878787"]
let s:dark_gray = [235, "#303030"]

let s:pink = [212, "#ff87d7"]
let s:light_pink = [218, "#ffafdf"]
let s:hot_pink = [201, "#ff00ff" ]

let s:red = [197, "#ff005f" ]

let s:teal = [123, "#87ffff"]
let s:light_blue = [159, "#afffff"]

let s:light_yellow = [229, "#ffffaf"]

let s:mint = [158, "#afffd7"]
let s:dark_mint = [49, "#87af87"]

let s:lavender = [183, "#dfafff"]
let s:gray_purple = [146, "#afafd7"]
let s:dark_lavender = [97, "#875faf"]

let s:none = ["NONE", ""]

" func
function! s:Color(name, fg, bg, style)
  execute "hi " . a:name . " ctermfg=" . a:fg[0] . " ctermbg=" . a:bg[0] " cterm=" . a:style
  if a:fg[1] != ""
    execute "hi " . a:name . " guifg=" . a:fg[1]
  endif
  if a:bg[1] != ""
    execute "hi " . a:name . " guibg=" . a:bg[1]
  endif
  execute "hi " . a:name . " gui=" . a:style
endfun

call s:Color("Normal", s:white, s:dark_gray, "NONE")
call s:Color("Cursor", s:dark_gray, s:white, "NONE")
call s:Color("Visual", s:none, s:mid_gray, "NONE")
call s:Color("CursorLine", s:none, s:dark_gray, "NONE")
call s:Color("CursorColumn", s:none, s:dark_gray, "NONE")
call s:Color("CursorLineNr", s:hot_pink, s:none, "NONE")
call s:Color("ColorColumn", s:none, s:dark_gray, "NONE")
call s:Color("LineNr", s:mid_gray, s:dark_gray, "NONE")
call s:Color("VertSplit", s:mid_gray, s:mid_gray, "NONE")
call s:Color("MatchParen", s:mid_gray, s:light_blue, "NONE")
call s:Color("StatusLine", s:white, s:mid_gray, "NONE")
call s:Color("StatusLineNC", s:white, s:mid_gray, "NONE")
call s:Color("Pmenu", s:white, s:mid_gray, "NONE")
call s:Color("PmenuSel", s:mid_gray, s:light_blue, "NONE")
call s:Color("IncSearch", s:mid_gray, s:light_blue, "NONE")
call s:Color("Search", s:mid_gray, s:light_blue, "NONE")
call s:Color("Directory", s:light_blue, s:none, "NONE")
call s:Color("Folded", s:dark_lavender, s:white, "NONE")

call s:Color("Define", s:gray_purple, s:none, "NONE")
call s:Color("DiffAdd", s:white, s:dark_mint, "NONE")
call s:Color("DiffDelete", s:red, s:none, "NONE")
call s:Color("DiffChange", s:white, s:dark_gray, "NONE")
call s:Color("DiffText", s:mid_gray, s:light_blue, "NONE")
call s:Color("ErrorMsg", s:white, s:hot_pink, "NONE")
call s:Color("Overlength", s:mid_gray, s:light_yellow, "NONE")
call s:Color("WarningMsg", s:white, s:hot_pink, "NONE")

call s:Color("Boolean", s:lavender, s:none, "NONE")
call s:Color("Character", s:lavender, s:none, "NONE")
call s:Color("Comment", s:gray_purple, s:none, "NONE")
call s:Color("Conditional", s:light_pink, s:none, "NONE")
call s:Color("Constant", s:mint, s:none, "NONE")
call s:Color("Float", s:lavender, s:none, "NONE")
call s:Color("Function", s:pink, s:none, "NONE")
call s:Color("Identifier", s:pink, s:none, "NONE")
call s:Color("Keyword", s:pink, s:none, "NONE")
call s:Color("Label", s:hot_pink, s:none, "NONE")
call s:Color("NonText", s:white, s:dark_gray, "NONE")
call s:Color("Number", s:mint, s:none, "NONE")
call s:Color("Operator", s:light_pink, s:none, "NONE")
call s:Color("PreProc", s:pink, s:none, "NONE")
call s:Color("Special", s:pink, s:none, "NONE")
call s:Color("SpecialKey", s:white, s:dark_gray, "NONE")
call s:Color("Statement", s:teal, s:none, "NONE")
call s:Color("StorageClass", s:mint, s:none, "NONE")
call s:Color("String", s:mint, s:none, "NONE")
call s:Color("Tag", s:light_pink, s:none, "NONE")
call s:Color("Title", s:white, s:none, "NONE")
call s:Color("Todo", s:hot_pink, s:white, "inverse,NONE")
call s:Color("Type", s:mint, s:none, "NONE")
call s:Color("Underlined", s:none, s:none, "underline")

call s:Color("pythonStatement", s:teal, s:none, "NONE")

call s:Color("htmlTag", s:none, s:none, "NONE")
call s:Color("htmlEndTag", s:none, s:none, "NONE")
call s:Color("htmlTagName", s:none, s:none, "NONE")
call s:Color("htmlArg", s:none, s:none, "NONE")
call s:Color("htmlSpecialChar", s:lavender, s:none, "NONE")

call s:Color("javaScriptFunction", s:mint, s:none, "NONE")
call s:Color("javaScriptRailsFunction", s:mint, s:none, "NONE")
call s:Color("javaScriptBraces", s:none, s:none, "NONE")

call s:Color("yamlKey", s:light_pink, s:none, "NONE")
call s:Color("yamlAnchor", s:none, s:none, "NONE")
call s:Color("yamlAlias", s:none, s:none, "NONE")
call s:Color("yamlDocumentHeader", s:light_yellow, s:none, "NONE")
call s:Color("yamlPlainScalar", s:light_blue, s:none, "NONE")
call s:Color("yamlBlockCollectionItemStart", s:light_pink, s:none, "NONE")

call s:Color("cssURL", s:hot_pink, s:none, "NONE")
call s:Color("cssFunctionName", s:mint, s:none, "NONE")
call s:Color("cssColor", s:lavender, s:none, "NONE")
call s:Color("cssPseudoClassId", s:light_pink, s:none, "NONE")
call s:Color("cssClassName", s:light_pink, s:none, "NONE")
call s:Color("cssValueLength", s:lavender, s:none, "NONE")
call s:Color("cssCommonAttr", s:mint, s:none, "NONE")
call s:Color("cssBraces", s:none, s:none, "NONE")

call s:Color("jsThis", s:light_pink, s:none, "NONE")
call s:Color("jsBraces", s:pink, s:none, "NONE")
call s:Color("jsGlobalObjects", s:mint, s:none, "NONE")

call s:Color("coffeeCurly", s:lavender, s:none, "NONE")
call s:Color("coffeeObjAssign", s:pink, s:none, "NONE")

call s:Color("cjsxAttribProperty", s:lavender, s:none, "NONE")

call s:Color("markdownH1", s:light_blue, s:none, "NONE")
call s:Color("markdownH2", s:light_blue, s:none, "NONE")
call s:Color("markdownH3", s:light_blue, s:none, "NONE")
call s:Color("markdownH4", s:light_blue, s:none, "NONE")
call s:Color("markdownH5", s:light_blue, s:none, "NONE")
call s:Color("markdownH6", s:light_blue, s:none, "NONE")
call s:Color("markdownHeadingDelimiter", s:light_blue, s:none, "NONE")
call s:Color("markdownRule", s:light_blue, s:none, "NONE")
