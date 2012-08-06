" Title: Lite Brite
" Author: Joel Holdbrooks <cjholdbrooks@gmail.com>
" URI: https://github.com/noprompt/lite-brite

set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "Lite Brite"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Color variables
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" TODO: Create variables for background colors as well.
let s:NO_FG   = " ctermfg=NONE guifg=NONE"
let s:NO_BG   = " ctermbg=NONE guibg=NONE"
let s:BLUE    = " ctermfg=117  guifg=#87d7ff"
let s:GREEN   = " ctermfg=120  guifg=#87afd7"
let s:ORANGE  = " ctermfg=222  guifg=#fccf8a"
let s:FUCHSIA = " ctermfg=213  guifg=#ff87ff"
let s:PINK    = " ctermfg=219  guifg=#ffafff"
let s:PURPLE  = " ctermfg=183  guifg=#e7b2ff"
let s:RED     = " ctermfg=210  guifg=#ff87af"
let s:WHITE   = " ctermfg=15   guifg=#ffffff"
let s:YELLOW  = " ctermfg=226  guifg=#ffff00"
let s:GREY1   = " ctermfg=233  guifg=#121212"
let s:GREY2   = " ctermfg=234  guifg=#1c1c1c"
let s:GREY3   = " ctermfg=235  guifg=#262626"
let s:GREY4   = " ctermfg=236  guifg=#303030"
let s:GREY5   = " ctermfg=237  guifg=#3a3a3a"
let s:GREY6   = " ctermfg=238  guifg=#444444"
let s:GREY7   = " ctermfg=239  guifg=#4e4e4e"
let s:GREY8   = " ctermfg=240  guifg=#585858"
let s:GREY9   = " ctermfg=241  guifg=#626262"
let s:GREY10  = " ctermfg=242  guifg=#6c6c6c"
let s:GREY11  = " ctermfg=243  guifg=#767676"
let s:GREY12  = " ctermfg=244  guifg=#808080"
let s:GREY13  = " ctermfg=245  guifg=#8a8a8a"

" Formatting
let s:BOLD                  = " cterm=bold gui=bold"
let s:ITALIC                = " gui=italic"
let s:UNDERLINE             = " cterm=underline gui=underline"
let s:BOLD_ITALIC           = " cterm=bold gui=bold,italic"
let s:BOLD_UNDERLINE        = " cterm=bold,underline gui=bold,underline"
let s:BOLD_ITALIC_UNDERLINE = " cterm=bold,underline gui=bold,italic,underline"
let s:ITALIC_UNDERLINE      = " cterm=underline gui=italic,underline"
let s:NO_FORMAT             = " cterm=NONE gui=NONE"

exe "hi Boolean"   . s:ORANGE    . s:NO_FORMAT 
exe "hi Character" . s:WHITE     . s:NO_FORMAT
exe "hi Comment"   . s:GREY6     . s:ITALIC
exe "hi Constant"  . s:WHITE     . s:BOLD
exe "hi Delimiter" . s:NO_FORMAT
exe "hi Function"  . s:BLUE      . s:NO_FORMAT
exe "hi Keyword"   . s:RED       . s:NO_FORMAT
exe "hi Number"    . s:GREEN     . s:NO_FORMAT
exe "hi Special"   . s:RED       . s:NO_FORMAT
exe "hi Statement" . s:BLUE      . s:NO_FORMAT
exe "hi String"    . s:PURPLE    . s:NO_FORMAT
exe "hi Todo"      . s:NO_BG     . s:GREY13
exe "hi Type"      . s:BLUE      . s:NO_FORMAT
hi ColorColumn ctermbg=233 guibg=#121212
hi CursorLine ctermbg=0 guibg=#000000
hi Folded ctermfg=240 ctermbg=233 guifg=#585858 guibg=#121212
hi LineNr ctermbg=233 ctermfg=235 guibg=#121212 guifg=#262626
hi MatchParen cterm=bold ctermbg=0 ctermfg=15 gui=bold guibg=#1f1f1f guifg=#ededed
hi NonText ctermbg=0 ctermfg=59 gui=NONE guibg=#141414 guifg=#3d3d3d
hi Normal ctermbg=0 ctermfg=15 gui=NONE guibg=#000000 guifg=#ffffff
hi Pmenu ctermbg=232 ctermfg=235 gui=NONE guibg=#141414 guifg=#ededed
hi PmenuSbar ctermbg=0 ctermfg=15 guibg=#1f1f1f guifg=#ededed
hi PmenuSel ctermbg=234 ctermfg=215
hi PreProc ctermfg=102 gui=NONE guifg=#7d7d7d
hi StatusLine ctermbg=240 ctermfg=234 guibg=#585858 guifg=#1c1c1c
hi StatusLineNC ctermbg=236 ctermfg=232 guibg=#303030 guifg=#080808
hi Tabline ctermfg=242 ctermbg=235 cterm=none
hi TablineFill ctermfg=233
hi TablineSel ctermfg=248 ctermbg=236
hi VertSplit ctermbg=240 ctermfg=233 guibg=#585858 guifg=#121212
hi Visual ctermbg=233 ctermfg=222 guibg=#121212 guifg=#ffd787
hi link Float Number 
hi link Identifier Normal 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Viml
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
exe "hi vimGroup" . s:WHITE

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" netrw
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
exe "hi netrwDir "      . s:PURPLE . s:NO_FORMAT 
exe "hi netrwClassify " . s:PURPLE . s:NO_FORMAT 
exe "hi netrwHelpCmd "  . s:PURPLE . s:NO_FORMAT 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ruby
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
exe "hi rubyBlockParameter"   . s:GREEN   . s:NO_FORMAT
exe "hi rubyClassVariable"    . s:ORANGE  . s:BOLD
exe "hi rubyDataDirective"    . s:YELLOW  . s:BOLD
exe "hi rubyInstanceVariable" . s:ORANGE  . s:BOLD
exe "hi rubyPseudoVariable"   . s:YELLOW  . s:BOLD
exe "hi rubyRegexp"           . s:GREEN   . s:NO_FORMAT
exe "hi rubySymbol"           . s:FUCHSIA . s:NO_FORMAT
hi link rubyAttribute Keyword
hi link rubyClass Keyword 
hi link rubyClassDeclaration Constant
hi link rubyConditional Keyword
hi link rubyConstant Constant 
hi link rubyControl Keyword 
hi link rubyData Comment
hi link rubyDefine Keyword
hi link rubyFunction Function 
hi link rubyGlobalVariable Constant 
hi link rubyInclude Keyword 
hi link rubyInterpolationDelimiter Comment
hi link rubyPredefinedVariable Constant 
hi link rubyRegexpDelimiter rubyRegexp
hi link rubySharpBang Comment 
hi link rubyStringDelimiter String

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" HTML
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
exe "hi htmlArg"                  . s:GREEN                 . s:NO_FORMAT
exe "hi htmlBold"                 . s:BOLD
exe "hi htmlBoldItalic"           . s:BOLD_ITALIC
exe "hi htmlBoldItalicUnderline " . s:BOLD_ITALIC_UNDERLINE
exe "hi htmlBoldUnderline"        . s:BOLD_UNDERLINE
exe "hi htmlH"                    . s:WHITE                 . s:BOLD
exe "hi htmlItalic"               . s:ITALIC
exe "hi htmlItalicUnderline"      . s:ITALIC_UNDERLINE
exe "hi htmlTag"                  . s:BLUE                  . s:NO_FORMAT
exe "hi htmlTitle"                . s:BOLD
exe "hi htmlUnderline"            . s:UNDERLINE
hi  link  htmlBoldUnderlineItalic  htmlBoldItalicUnderline
hi  link  htmlH1                   htmlH
hi  link  htmlH2                   htmlH
hi  link  htmlH3                   htmlH
hi  link  htmlH4                   htmlH
hi  link  htmlH5                   htmlH
hi  link  htmlH6                   htmlH
hi  link  htmlItalicBold           htmlBoldItalic
hi  link  htmlItalicBoldUnderline  htmlBoldItalicUnderline
hi  link  htmlItalicUnderlineBold  htmlBoldItalicUnderline
hi  link  htmlSpecialTagName       htmlTag
hi  link  htmlTagN                 htmlTag
hi  link  htmlTagName              htmlTag
hi  link  htmlUnderlineBold        htmlBoldUnderline
hi  link  htmlUnderlineBoldItalic  htmlBoldUnderlineItalic
hi  link  htmlUnderlineItalic      htmlItalicUnderline
hi  link  htmlUnderlineItalicBold  htmlBoldUnderlineItalic

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" C/C++
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
exe "hi cCharacter "  . s:PURPLE  . s:NO_FORMAT
exe "hi cIncluded "   . s:PURPLE  . s:NO_FORMAT
exe "hi cppAccess"    . s:FUCHSIA . s:NO_FORMAT
exe "hi cType"        . s:YELLOW  . s:NO_FORMAT
exe "hi cUserLabel"   . s:FUCHSIA . s:NO_FORMAT
exe "hi cStructure"   . s:BLUE    . s:NO_FORMAT
exe "hi cppStructure" . s:RED     . s:NO_FORMAT
hi link cStorageClass cType
hi link cDefine Comment 
hi link cInclude Comment 
hi link cppType cType

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CSS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
exe "hi cssAuralAttr"       . s:WHITE   . s:NO_FORMAT
exe "hi cssBoxAttr"         . s:WHITE   . s:NO_FORMAT
exe "hi cssClassName"       . s:WHITE   . s:NO_FORMAT
exe "hi cssCommonAttr"      . s:WHITE   . s:NO_FORMAT
exe "hi cssDefinition"      . s:YELLOW  . s:NO_FORMAT
exe "hi cssIdentifier"      . s:WHITE   . s:BOLD
exe "hi cssImportant"       . s:FUCHSIA . s:BOLD
exe "hi cssInclude"         . s:GREEN   . s:NO_FORMAT
exe "hi cssMedia"           . s:GREEN   . s:NO_FORMAT
exe "hi cssMediaType"       . s:RED     . s:NO_FORMAT
exe "hi cssPagingAttr"      . s:WHITE   . s:NO_FORMAT
exe "hi cssPseudoClass"     . s:GREEN   . s:NO_FORMAT
exe "hi cssPseudoClassId"   . s:WHITE   . s:NO_FORMAT
exe "hi cssPseudoClassLang" . s:WHITE   . s:NO_FORMAT
exe "hi cssRenderAttr"      . s:WHITE   . s:NO_FORMAT
exe "hi cssTableAttr"       . s:WHITE   . s:NO_FORMAT
exe "hi cssTextAttr"        . s:WHITE   . s:NO_FORMAT
exe "hi cssUIAttr"          . s:WHITE   . s:NO_FORMAT
exe "hi cssValue"           . s:GREEN
hi link cssAttributeSelector     String
hi link cssAuralProp             cssDefinition
hi link cssBoxProp               cssDefinition
hi link cssBraces                Normal
hi link cssColor                 Number
hi link cssColorProp             cssDefinition
hi link cssComment               Comment
hi link cssFontAttr              Normal
hi link cssFontDescriptorAttr    cssCommonAttr
hi link cssFontProp              cssDefinition
hi link cssFunction              Function
hi link cssFunctionName          Function
hi link cssGeneratedContentAttr  cssCommonAttr
hi link cssGeneratedContentProp  cssDefinition
hi link cssPagingProp            cssDefinition
hi link cssRenderProp            cssDefinition
hi link cssTableProp             cssDefinition
hi link cssTagName               htmlTag
hi link cssTextProp              cssDefinition
hi link cssUIProp                cssDefinition
hi link cssValueAngle            cssValue
hi link cssValueFrequency        cssValue
hi link cssValueInteger          cssValue
hi link cssValueLength           cssValue
hi link cssValueNumber           cssValue
hi link cssValueTime             cssValue

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" JavaScript
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
exe "hi javaScript"             . s:WHITE  . s:NO_FORMAT
exe "hi javaScriptIdentifier"   . s:YELLOW . s:NO_FORMAT
exe "hi javaScriptNull"         . s:ORANGE . s:NO_FORMAT
exe "hi javaScriptOperator"     . s:RED    . s:NO_FORMAT
exe "hi javaScriptRegexpString" . s:GREEN  . s:NO_FORMAT
exe "hi javaScriptStatement"    . s:RED    . s:NO_FORMAT
hi link javaScriptBraces   Normal
hi link javaScriptFunction Function
hi link javaScriptGlobal   Constant
hi link javascriptNumber   Number

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CoffeeScript
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
exe "hi coffeeSpecialIdent" . s:ORANGE . s:NO_FORMAT
exe "hi coffeeSpecialVar"   . s:YELLOW . s:NO_FORMAT
exe "hi coffeeRegex"        . s:GREEN  . s:NO_FORMAT
exe "hi coffeeObjAssign"    . s:GREEN  . s:NO_FORMAT
exe "hi coffeeParen"        . s:WHITE  . s:NO_FORMAT
exe "hi coffeeParens"       . s:WHITE  . s:NO_FORMAT
exe "hi coffeeBracket"      . s:WHITE  . s:NO_FORMAT
exe "hi coffeeCurly"        . s:WHITE  . s:NO_FORMAT
exe "hi coffeeCurlies"      . s:WHITE  . s:NO_FORMAT
exe "hi coffeeExtendedOp"   . s:WHITE  . s:NO_FORMAT

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sass
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
exe "hi sassVariable" . s:YELLOW . s:NO_FORMAT
hi link sassIdChar    sassId
hi link sassClassChar sassClass

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Haskell
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
hi link hsCharacter String
