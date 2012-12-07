" Title: LiteBrite
" Author: Joel Holdbrooks <cjholdbrooks@gmail.com>
" URI: https://github.com/noprompt/lite-brite

set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "LiteBrite"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Color variables
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let s:NO_FG    = " ctermfg=NONE guifg=NONE"
let s:NO_BG    = " ctermbg=NONE guibg=NONE"

let s:BLUE     = " ctermfg=117  guifg=#87d7ff"
let s:FUCHSIA  = " ctermfg=213  guifg=#ff87ff"
let s:GREEN    = " ctermfg=120  guifg=#87ff87"
let s:ORANGE   = " ctermfg=221  guifg=#ffd75f"
let s:PINK     = " ctermfg=219  guifg=#ffafff"
let s:PURPLE   = " ctermfg=183  guifg=#d7afff"
let s:RED      = " ctermfg=210  guifg=#ff8787"
let s:TEAL     = " ctermfg=14   guifg=#00ffff"
let s:WHITE    = " ctermfg=15   guifg=#ffffff"
let s:YELLOW   = " ctermfg=227  guifg=#ffff5f"

let s:GREY1    = " ctermfg=233  guifg=#121212"
let s:GREY2    = " ctermfg=234  guifg=#1c1c1c"
let s:GREY3    = " ctermfg=235  guifg=#262626"
let s:GREY4    = " ctermfg=236  guifg=#303030"
let s:GREY5    = " ctermfg=237  guifg=#3a3a3a"
let s:GREY6    = " ctermfg=238  guifg=#444444"
let s:GREY7    = " ctermfg=239  guifg=#4e4e4e"
let s:GREY8    = " ctermfg=240  guifg=#585858"
let s:GREY9    = " ctermfg=241  guifg=#626262"
let s:GREY10   = " ctermfg=242  guifg=#6c6c6c"
let s:GREY11   = " ctermfg=243  guifg=#767676"
let s:GREY12   = " ctermfg=244  guifg=#808080"
let s:GREY13   = " ctermfg=245  guifg=#8a8a8a"

let s:GREY1_BG = " ctermbg=233  guibg=#121212"
let s:GREY2_BG = " ctermbg=234  guibg=#1c1c1c"
let s:GREY3_BG = " ctermbg=235  guibg=#262626"
let s:GREY4_BG = " ctermbg=236  guibg=#303030"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Formatting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let s:BOLD                  = " cterm=bold gui=bold"
let s:ITALIC                = " gui=italic"
let s:UNDERLINE             = " cterm=underline gui=underline"
let s:BOLD_ITALIC           = " cterm=bold gui=bold,italic"
let s:BOLD_UNDERLINE        = " cterm=bold,underline gui=bold,underline"
let s:BOLD_ITALIC_UNDERLINE = " cterm=bold,underline gui=bold,italic,underline"
let s:ITALIC_UNDERLINE      = " cterm=underline gui=italic,underline"
let s:NO_FORMAT             = " cterm=NONE gui=NONE"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Color highlights
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
exe "hi litebriteBlue"    . s:BLUE    . s:NO_FORMAT
exe "hi litebriteFuchsia" . s:FUCHSIA . s:NO_FORMAT
exe "hi litebriteGreen"   . s:GREEN   . s:NO_FORMAT
exe "hi litebriteOrange"  . s:ORANGE  . s:NO_FORMAT
exe "hi litebritePink"    . s:PINK    . s:NO_FORMAT
exe "hi litebritePurple"  . s:PURPLE  . s:NO_FORMAT
exe "hi litebriteRed"     . s:RED     . s:NO_FORMAT
exe "hi litebriteTeal"    . s:TEAL    . s:NO_FORMAT
exe "hi litebriteWhite"   . s:WHITE   . s:NO_FORMAT
exe "hi litebriteYellow"  . s:YELLOW  . s:NO_FORMAT

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Top level highlights
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
exe "hi Boolean"      . s:ORANGE    . s:NO_FORMAT
exe "hi Character"    . s:WHITE     . s:NO_FORMAT
exe "hi Comment"      . s:GREY6     . s:ITALIC
exe "hi Constant"     . s:WHITE     . s:BOLD
exe "hi Delimiter"    . s:NO_FORMAT
exe "hi Function"     . s:BLUE      . s:NO_FORMAT
exe "hi Keyword"      . s:RED       . s:NO_FORMAT
exe "hi Number"       . s:GREEN     . s:NO_FORMAT
exe "hi Special"      . s:RED       . s:NO_FORMAT
exe "hi Statement"    . s:BLUE      . s:NO_FORMAT
exe "hi String"       . s:TEAL      . s:NO_FORMAT
exe "hi Todo"         . s:NO_BG     . s:GREY13
exe "hi Type"         . s:BLUE      . s:NO_FORMAT
exe "hi ColorColumn"  . s:GREY1_BG  . s:NO_FORMAT
exe "hi CursorLine"   . s:GREY1_BG  . s:NO_FORMAT
exe "hi CursorLineNr" . s:GREY4     . s:NO_FORMAT
exe "hi MatchParen"   . s:WHITE     . s:GREY4_BG       . s:BOLD
exe "hi SpellBad"     . s:RED       . s:BOLD_UNDERLINE . s:NO_BG

" TODO: Use vars and links where possible.
hi Folded ctermfg=240 ctermbg=233 guifg=#585858 guibg=#121212
hi LineNr ctermbg=233 ctermfg=235 guibg=#121212 guifg=#262626
hi NonText ctermbg=0 ctermfg=59 gui=NONE guibg=#141414 guifg=#3d3d3d
hi Normal ctermbg=0 ctermfg=15 gui=NONE guibg=#000000 guifg=#ffffff
hi Pmenu ctermbg=232 ctermfg=235 gui=NONE guibg=#141414 guifg=#ededed
hi PmenuSbar ctermbg=0 ctermfg=15 guibg=#1f1f1f guifg=#ededed
hi PmenuSel ctermbg=234 ctermfg=215
hi StatusLine ctermbg=240 ctermfg=234 guibg=#585858 guifg=#1c1c1c
hi StatusLineNC ctermbg=236 ctermfg=232 guibg=#303030 guifg=#080808
" Underline search results.
hi Search cterm=underline ctermbg=NONE ctermfg=NONE gui=underline guibg=NONE guifg=NONE
hi Tabline ctermfg=242 ctermbg=235 cterm=none
hi TablineFill ctermfg=233
hi TablineSel ctermfg=248 ctermbg=236
hi VertSplit ctermbg=240 ctermfg=233 guibg=#585858 guifg=#121212
hi Visual ctermbg=233 ctermfg=222 guibg=#121212 guifg=#ffd787

hi link PreProc Comment
hi link Float Number
hi link Identifier Normal

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Viml
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
hi link vimAddress litebriteYellow
hi link vimAutoCmd litebritePurple
hi link vimAutoEvent litebritePink
hi link vimCommentTitle Todo
hi link vimContinue litebriteWhite
hi link vimFunction litebriteWhite
hi link vimFuncSID litebriteYellow
hi link vimGroup litebriteWhite
hi link vimHiAttrib litebriteGreen
hi link vimHiCterm litebriteFuchsia
hi link vimHiCtermFgBg litebriteFuchsia
hi link vimHiGui litebriteFuchsia
hi link vimHiGuiFgBg litebriteFuchsia
hi link vimLet litebriteRed
hi link vimMap litebritePurple
hi link vimMapModKey litebriteYellow
hi link vimNotation litebriteYellow
hi link vimOper litebriteWhite
hi link vimSetSep litebriteWhite
hi link vimSubstDelim litebriteGreen
hi link vimSubstPat litebriteGreen
hi link vimVar litebriteWhite

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" netrw
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
exe "hi netrwDir "      . s:PURPLE . s:NO_FORMAT
exe "hi netrwClassify " . s:PURPLE . s:NO_FORMAT
exe "hi netrwHelpCmd "  . s:PURPLE . s:NO_FORMAT

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ruby
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
exe "hi rubyAccess"           . s:BLUE    . s:NO_FORMAT
exe "hi rubyBlockParameter"   . s:ORANGE  . s:NO_FORMAT
exe "hi rubyClassVariable"    . s:GREEN
exe "hi rubyDataDirective"    . s:YELLOW  . s:BOLD
exe "hi rubyInstanceVariable" . s:GREEN
exe "hi rubyPseudoVariable"   . s:WHITE
exe "hi rubyRegexp"           . s:GREEN   . s:NO_FORMAT
exe "hi rubySymbol"           . s:FUCHSIA . s:NO_FORMAT
exe "hi rubyAttribute"        . s:BLUE    . s:NO_FORMAT
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
hi link rubyModuleDeclaration Constant
hi link rubyRailsUserClass Constant
hi link rubyPredefinedVariable Constant
hi link rubyRegexpDelimiter rubyRegexp
hi link rubySharpBang Comment
hi link rubyStringDelimiter String

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" HTML
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
exe "hi htmlArg"                  . s:FUCHSIA . s:NO_FORMAT
exe "hi htmlBold"                 . s:BOLD
exe "hi htmlBoldItalic"           . s:BOLD_ITALIC
exe "hi htmlBoldItalicUnderline " . s:BOLD_ITALIC_UNDERLINE
exe "hi htmlBoldUnderline"        . s:BOLD_UNDERLINE
exe "hi htmlH"                    . s:WHITE . s:BOLD
exe "hi htmlItalic"               . s:ITALIC
exe "hi htmlItalicUnderline"      . s:ITALIC_UNDERLINE
exe "hi htmlTag"                  . s:BLUE . s:NO_FORMAT
exe "hi htmlTitle"                . s:BOLD
exe "hi htmlUnderline"            . s:UNDERLINE
exe "hi htmlSpecialChar"          . s:ORANGE . s:BOLD
hi link htmlBoldUnderlineItalic  htmlBoldItalicUnderline
hi link htmlH1                   htmlH
hi link htmlH2                   htmlH
hi link htmlH3                   htmlH
hi link htmlH4                   htmlH
hi link htmlH5                   htmlH
hi link htmlH6                   htmlH
hi link htmlItalicBold           htmlBoldItalic
hi link htmlItalicBoldUnderline  htmlBoldItalicUnderline
hi link htmlItalicUnderlineBold  htmlBoldItalicUnderline
hi link htmlSpecialTagName       htmlTag
hi link htmlTagN                 htmlTag
hi link htmlTagName              htmlTag
hi link htmlUnderlineBold        htmlBoldUnderline
hi link htmlUnderlineBoldItalic  htmlBoldUnderlineItalic
hi link htmlUnderlineItalic      htmlItalicUnderline
hi link htmlUnderlineItalicBold  htmlBoldUnderlineItalic

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PHP
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
exe "hi phpConditional"     . s:RED      . s:NO_FORMAT
exe "hi phpException"       . s:RED      . s:NO_FORMAT
exe "hi phpIdentifier"      . s:WHITE    . s:NO_FORMAT
exe "hi phpInterfaces"      . s:WHITE    . s:NO_FORMAT
exe "hi phpIntVar"          . s:WHITE    . s:BOLD
exe "hi phpOperator"        . s:WHITE    . s:NO_FORMAT
exe "hi phpRepeat"          . s:RED      . s:NO_FORMAT
exe "hi phpSpecialFunction" . s:YELLOW   . s:NO_FORMAT
exe "hi phpStatement"       . s:RED      . s:NO_FORMAT
exe "hi phpStorageClass"    . s:PURPLE   . s:NO_FORMAT
exe "hi phpType"            . s:FUCHSIA  . s:NO_FORMAT
exe "hi phpVarSelector"     . s:WHITE    . s:NO_FORMAT
hi link phpFunctions Function
hi link phpDefine Function
hi link phpRelation phpOperator
hi link phpComparison phpOperator
hi link phpMemberSelector phpOperator

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" XML
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
hi link xmlAttrib htmlArg
hi link xmlEndTag htmlTagN

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
exe "hi cssDefinition"      . s:PURPLE  . s:NO_FORMAT
exe "hi cssIdentifier"      . s:WHITE   . s:BOLD
exe "hi cssImportant"       . s:RED     . s:ITALIC
exe "hi cssInclude"         . s:GREEN   . s:NO_FORMAT
exe "hi cssMedia"           . s:GREEN   . s:NO_FORMAT
exe "hi cssMediaType"       . s:RED     . s:NO_FORMAT
exe "hi cssPagingAttr"      . s:WHITE   . s:NO_FORMAT
exe "hi cssPseudoClass"     . s:YELLOW  . s:NO_FORMAT
exe "hi cssPseudoClassId"   . s:YELLOW  . s:NO_FORMAT
exe "hi cssPseudoClassLang" . s:WHITE   . s:NO_FORMAT
exe "hi cssRenderAttr"      . s:WHITE   . s:NO_FORMAT
exe "hi cssTableAttr"       . s:WHITE   . s:NO_FORMAT
exe "hi cssTextAttr"        . s:WHITE   . s:NO_FORMAT
exe "hi cssUIAttr"          . s:WHITE   . s:NO_FORMAT
exe "hi cssValue"           . s:GREEN   . s:NO_FORMAT
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
" Sass
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
exe "hi sassVariable" . s:ORANGE . s:NO_FORMAT
hi link sassVariableAssignment sassVariable
hi link sassProperty  cssDefinition
hi link sassId        cssIdentifier
hi link sassClass     cssClassName
hi link sassIdChar    sassId
hi link sassClassChar sassClass
exe "hi sassMixing" . s:BLUE . s:NO_FORMAT
exe "hi sassInclude" . s:BLUE . s:NO_FORMAT

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" JavaScript
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
exe "hi javaScript"             . s:WHITE   . s:NO_FORMAT
exe "hi javaScriptIdentifier"   . s:PURPLE  . s:NO_FORMAT
exe "hi javaScriptType"         . s:PURPLE  . s:NO_FORMAT
exe "hi javaScriptNull"         . s:ORANGE  . s:NO_FORMAT
exe "hi javaScriptOperator"     . s:RED     . s:NO_FORMAT
exe "hi javaScriptRegexpString" . s:GREEN   . s:NO_FORMAT
exe "hi javaScriptStatement"    . s:RED     . s:NO_FORMAT
exe "hi javaScriptConditional"  . s:RED     . s:NO_FORMAT
exe "hi javaScriptMember"       . s:YELLOW  . s:NO_FORMAT
exe "hi javaScriptOperator"     . s:YELLOW  . s:NO_FORMAT
exe "hi javaScriptLabel"        . s:FUCHSIA . s:NO_FORMAT
exe "hi javaScriptBranch"       . s:RED     . s:NO_FORMAT
exe "hi javaScriptExceptions"   . s:WHITE   . s:BOLD
exe "hi javaScriptFutureKeys"   . s:FUCHSIA . s:NO_FORMAT
hi link javaScriptBraces        Normal
hi link javaScriptFunction      Function
hi link javaScriptGlobal        Constant
hi link javaScriptGlobalObjects Constant
hi link javascriptNumber        Number

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CoffeeScript
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
hi coffeeSpaceError ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE
exe "hi coffeeSpecialIdent" . s:ORANGE  . s:NO_FORMAT
exe "hi coffeeSpecialVar"   . s:YELLOW  . s:NO_FORMAT
exe "hi coffeeSpecialOp"    . s:WHITE   . s:NO_FORMAT
exe "hi coffeeRegex"        . s:GREEN   . s:NO_FORMAT
exe "hi coffeeObjAssign"    . s:FUCHSIA . s:NO_FORMAT
exe "hi coffeeParen"        . s:WHITE   . s:NO_FORMAT
exe "hi coffeeParens"       . s:WHITE   . s:NO_FORMAT
exe "hi coffeeBracket"      . s:WHITE   . s:NO_FORMAT
exe "hi coffeeCurly"        . s:WHITE   . s:NO_FORMAT
exe "hi coffeeCurlies"      . s:WHITE   . s:NO_FORMAT
exe "hi coffeeExtendedOp"   . s:WHITE   . s:NO_FORMAT

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Livescript
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
hi link lsSpaceError coffeeSpaceError
exe "hi lsIdentifier"       . s:WHITE   . s:NO_FORMAT
exe "hi lsRegex"            . s:GREEN   . s:NO_FORMAT
exe "hi lsInfixFunc"        . s:RED     . s:NO_FORMAT
exe "hi lsProp"             . s:FUCHSIA . s:NO_FORMAT
exe "hi lsVarInterpolation" . s:WHITE   . s:NO_FORMAT

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Haskell
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
hi link hsCharacter String

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Standard ML
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
exe "hi smlModPath"   . s:WHITE . s:BOLD
exe "hi smlKeyWord"   . s:BLUE  . s:NO_FORMAT
exe "hi smlKeyChar"   . s:WHITE  . s:NO_FORMAT
exe "hi smlCharacter" . s:PURPLE . s:NO_FORMAT
hi link smlEncl smlKeyChar

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Clojure
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
exe "hi clojureCharacter" . s:TEAL    . s:NO_FORMAT
exe "hi clojureDefine"    . s:BLUE    . s:NO_FORMAT
exe "hi clojureKeyword"   . s:FUCHSIA . s:NO_FORMAT
exe "hi clojureMacro"     . s:YELLOW  . s:NO_FORMAT
exe "hi clojurePattern"   . s:GREEN   . s:NO_FORMAT
exe "hi clojureVariable"  . s:WHITE   . s:BOLD

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Shell
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
exe "hi shTestPattern"   . s:GREEN  . s:NO_FORMAT
exe "hi shSubShRegion"   . s:WHITE  . s:NO_FORMAT
exe "hi shRepeat"        . s:RED    . s:NO_FORMAT
exe "hi shRange"         . s:WHITE  . s:NO_FORMAT
exe "hi shOption"        . s:PURPLE . s:NO_FORMAT
exe "hi shOperator"      . s:WHITE  . s:NO_FORMAT
exe "hi shLoop"          . s:RED    . s:NO_FORMAT
exe "hi shExpr"          . s:WHITE  . s:NO_FORMAT
" Don't highlight bare words when using the echo command. This is a reminder
" to use string literals instead.
exe "hi shEcho"          . s:WHITE  . s:NO_FORMAT
exe "hi shDerefVarArray" . s:GREEN  . s:NO_FORMAT
exe "hi shDerefSimple"   . s:WHITE  . s:NO_FORMAT
exe "hi shDeref"         . s:WHITE  . s:NO_FORMAT
exe "hi shConditional"   . s:RED    . s:NO_FORMAT
exe "hi shCommandSub"    . s:YELLOW . s:NO_FORMAT
exe "hi shCmdSubRegion"  . s:WHITE  . s:NO_FORMAT
hi link shAlias Normal
hi link shVariable Normal
hi link shSetList Normal
hi link shTestOpr Normal
hi link shQuote String

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MySQL
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
exe "hi mysqlType"     . s:FUCHSIA . s:NO_FORMAT
exe "hi mysqlSpecial"  . s:ORANGE  . s:NO_FORMAT
exe "hi mysqlOperator" . s:PINK    . s:NO_FORMAT
exe "hi mysqlKeyword"  . s:BLUE    . s:NO_FORMAT
exe "hi mysqlFunction" . s:RED     . s:NO_FORMAT
exe "hi mysqlVariable" . s:YELLOW  . s:NO_FORMAT
