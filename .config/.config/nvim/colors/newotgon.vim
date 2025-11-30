
let	s:mainbg ="#000000"
"let s:mainbg = "#030e12"
let s:dark = "#242424"
let s:black1 = "#27272a"
let	s:black = "#101010"
let	s:white = "#E1E1E1"
let s:grey =  "#9e9e9e"
let s:grey2 = '#626262'
let s:grey3 = "#303030"
"new color 

let	s:red = "#9c333c"
let	s:blue = "#339c7c"
let	s:orange = "#8f7756"
let	s:green4 = "#339c70"
let	s:cyan = "#7e9c33"
let	s:insertcolor = "#578a3f"
let	s:visualcolor = "#754d5f"
let	s:replacecolor = "#9c67b5"
let	s:normalcolor = "#2f8a62"

"let	s:red1 = "#e97263"
let	s:red2 = "#AC4142"
let s:red1 = "#D16969"
"let s:orange = "#CE9178"
let	s:red3 = "#ffa398"

let	s:blue1 = "#8BADCD"
let	s:sky = "#89BEB7"
let	s:spring1 = "#098989"
let s:spring = "#38ada9"


let s:green2 = "#87dfaf"
let s:green = "#6A9955"
let s:blue_green = "#4EC9B0"
let s:green3 = "#B5CEA8"
let s:green1 = "#90b99f"


"let	s:pink2 = "#ae88ff"
"let	s:violet = "#d183e8"	
let	s:pink = "#f5a3c2"
let	s:pink2 = "#f17eaa"
let s:violet = "#e29eca"
let s:purple = "#aca1cf"
  
let	s:yellow = "#de935f"
let s:yellow1 = "#DCDCAA"
let s:sun= "#D7BA7D"
let s:yellow2 = "#e6b99d"
let s:sun2 = "#f5a191"


set background=dark
if version > 1
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif
set t_Co=256
let g:colors_name = "nogto"
"""""""""""""""""""""""
"" Vim Editor Color 
"""""""""""""""""""""""
exe "hi Normal  guifg="s:white    "guibg="s:mainbg 
exe "hi NormalFloat guifg="s:white "guibg="s:black   
exe "hi Visual  guibg="s:grey3   
exe "hi Conceal guifg="s:grey3  
exe "hi Italic guifg="s:grey3  
exe "hi Question guifg="s:grey3 
exe "hi SpecialKey guifg="s:grey3   
exe "hi Whitespace guifg="s:grey2  
exe "hi Title guifg="s:grey  
exe "hi VisualNOS guifg="s:grey3  
exe "hi TooLong guifg="s:grey3  
" cursor
exe "hi Cursor guibg="s:black 
exe "hi CursorLineNr guibg="s:black  
exe "hi CursorIM guibg="s:black 
exe "hi CursorLine guibg="s:black    
exe "hi CursorColumn guibg="s:black  
" complete
exe "hi Pmenu guibg="s:mainbg    "guifg="s:white  
exe "hi PmenuSel guibg="s:black  "guifg=NONE"
exe "hi PmenuSbar guibg="s:black  "guifg="s:grey 
exe "hi PmenuThumb guibg="s:grey3 "guifg=NONE"
"search
exe "hi Search  guibg="s:grey   
exe "hi IncSearch guifg="s:grey2    
"text and line or numbers
exe "hi NonText  guifg="s:grey      
exe "hi StatusLine guifg="s:black    
exe "hi StatusLineNC guifg="s:grey2    
exe "hi TabLine guifg="s:black    
exe "hi TabLineFill guifg="s:black   
exe "hi TabLineSel guifg="s:grey  
exe "hi LineNr guifg="s:white  
"msj arlet 
exe "hi ErrorMsg guifg="s:pink   
exe "hi ModeMsg guifg="s:red   
exe "hi MoreMsg guifg="s:purple   
exe "hi WarningMsg guifg="s:sun  
"others
exe "hi foldcolumn guibg="s:grey3      
exe "hi VertSplit guibg="s:black    "guifg="s:mainbg    
exe "hi ColorColumn guibg=" s:black      
exe "hi MatchParen guifg="s:grey  
exe "hi Directory guifg=" s:grey   
exe "hi WildMenu guifg=" s:grey     
exe "hi SignColumn  guifg=" s:grey     
exe "hi Folded guifg="s:black  "guibg="s:white 
exe "hi FoldColumn  guibg="s:white "guifg="s:black 

"""""""""""""""""""""""
" Syntax
"""""""""""""""""""""""
" constant
exe "hi Constant guifg=" s:green  
exe "hi String guifg=" s:green2   
exe "hi Comment  guifg="s:grey     
exe "hi Character  guifg="s:yellow1   
exe "hi Number guifg=" s:white    
exe "hi Boolean   guifg="s:sun     
exe "hi Float  guifg="s:yellow 
exe "hi FloatBorder guifg="s:yellow 
" identifier
exe "hi Identifier guifg="s:red3               
exe "hi Function  guifg="s:spring     
"statement 
exe "hi Statement  guifg="s:pink2      
exe "hi Conditional guifg="s:red2     
exe "hi Repeat  guifg=" s:blue_green        
exe "hi Label guifg=" s:sun     
exe "hi Operator guifg="s:white 
exe "hi Keyword  guifg="s:orange       
" PreProc
exe "hi Define guifg="s:violet  
exe "hi PreCondit  guifg=" s:red   
exe "hi PreProc  guifg=" s:violet  
" type
exe "hi StorageClass guifg=" s:spring     
exe "hi Structure  guifg="s:yellow  
exe "hi Type guifg="s:yellow
exe "hi Typedef guifg="s:yellow 
" Special
exe "hi Special guifg="s:green      
exe "hi SpecialChar guifg="s:sun     
exe "hi SpecialComment  guifg="s:green2    
exe "hi Tag  guifg=" s:grey2      
" error
exe "hi Error guifg="s:mainbg "guibg="s:sky  
"" others  
exe "hi Include guifg=" s:pink      
exe "hi Macro guifg=" s:purple      
exe "hi Delimiter guifg=" s:violet   
exe "hi Debug guifg=" s:violet   
exe "hi Underlined guifg=" s:violet   
exe "hi Ignore guifg=" s:violet   
exe "hi Todo guifg=" s:violet   
exe "hi Exception guifg=" s:red    
" Spell Highlightings
exe "hi SpellBad guifg="s:mainbg  
exe "hi SpellCap guifg="s:mainbg   "guibg="s:blue 
exe "hi SpellLocal guifg="s:mainbg   
exe "hi SpellRare guifg="s:mainbg 
" Diff Highlightings
exe "hi DiffAdd guifg="s:white "guibg="s:mainbg  
exe "hi DiffChange guifg="s:black  "guibg="s:mainbg 
exe "hi DiffDelete guifg="s:black  "guibg="s:mainbg 
exe "hi DiffText guifg="s:white "guibg="s:white 

"""""""""""""""""""""""
" plugin support 
"""""""""""""""""""""""
" Nvim-Treesitter Highlights 
exe "hi @Annotation guifg="s:blue  
exe "hi @Error guifg="s:pink 
exe "hi @Operator  guifg="s:white   
exe "hi @Attribute guifg="s:green   
exe "hi @Boolean guifg="s:sun  
exe "hi @Character guifg="s:yellow1   
exe "hi @Comment guifg=" s:grey   
exe "hi @Conditional guifg="s:red2  
exe "hi @Constant guifg="s:green

exe "hi @ConstBuiltin guifg="s:spring 
exe "hi @ConstMacro guifg="s:violet  
exe "hi @Constructor guifg="s:blue   
exe "hi @Exception guifg="s:red  
exe "hi @Field guifg="s:green 
exe "hi @Float guifg="s:yellow    
exe "hi @Function guifg="s:spring             
exe "hi @FuncBuiltin guifg="s:sky   
exe "hi @FuncMacro guifg="s:violet 
exe "hi @Include guifg="s:pink     
exe "hi @Keyword guifg="s:orange    
exe "hi @KeywordFunction guifg="s:sky    
exe "hi TsKeywordOperator guifg="s:white 
exe "hi @KeywordReturn guifg="s:sun  
exe "hi @Label guifg="s:sun      
exe "hi @Method guifg="s:white    
exe "hi @Namespace guifg="s:blue    
exe "hi @Number guifg="s:white  
exe "hi @Parameter guifg="s:purple   
exe "hi @ParameterReference guifg="s:yellow 
exe "hi @Property guifg="s:blue 
exe "hi @PunctDelimiter guifg="s:green   
exe "hi @PunctBracket guifg="s:purple 
exe "hi @PunctSpecial guifg="s:green2 
exe "hi @Repeat guifg=" s:blue_green      
exe "hi @String guifg="s:green2   
exe "hi @StringRegex guifg=" s:green3  
exe "hi @StringEscape guifg="s:yellow  
exe "hi @StringSpecial guifg="s:green4  
exe "hi @Symbol guifg=" s:yellow  
exe "hi @Tag guifg="s:red   
exe "hi @tag.attribute guifg="s:spring     
exe "hi @tag.delimiter guifg="s:grey 
exe "hi @Text guifg="s:green2  
exe "hi @Strong guifg="s:yellow 
exe "hi @Structure guifg="s:yellow 
exe "hi @Strong guifg="s:yellow  
exe "hi @Emphasis gui=italic"
exe "hi @Underline guifg="s:black   
exe "hi @Strike guifg="s:purple 
exe "hi @Title guifg="s:green2   
exe "hi @Literal guifg="s:green  
exe "hi @URI guifg="s:green  
exe "hi @Math guifg="s:purple 
exe "hi @TextReference guifg="s:white  
exe "hi @Environtment guifg="s:sky
exe "hi @EnvironmentName guifg="s:green 
exe "hi @Note guifg="s:pink 
exe "hi @Warning guifg="s:white   "guibg="s:pink
exe "hi @Danger guifg="s:pink  
exe "hi @Type guifg="s:yellow   
exe "hi @TypeBuiltin guifg="s:green   
exe "hi @Variable guifg="s:white    
exe "hi @Variable.Builtin guifg="s:red  
exe "hi @variable.parameter guifg="s:sky   

" NvimTree Highlights
exe "hi NvimTreeFolderIcon guifg="s:black 
exe "hi NvimTreeFoldername guifg="s:white 
exe "hi NvimTreeOpenedFolderName guifg="s:green 
exe "hi NvimTreeEmptyFolderName guifg="s:spring 
exe "hi NvimTreeFileDirty guifg="s:black 
exe "hi NvimTreeExecFile guifg="s:white 
exe "hi NvimTreeGitDirty guifg="s:black 
exe "hi NvimTreeGitDeleted guifg="s:white  
exe "hi NvimTreeRootFolder guifg="s:green 
exe "hi NvimTreeIndentMarker guifg="s:sky
" lsp diagnostic 
exe "hi LspDiagnosticsDefaultError guifg="s:red 
exe "hi LspDiagnosticsDefaultWarning guifg="s:sun 
exe "hi LspDiagnosticsDefaultInformation guifg="s:white 
exe "hi LspDiagnosticsDefaultHint guifg="s:yellow 
exe "hi LspDiagnosticsVirtualTextError guifg="s:red2 
exe "hi LspDiagnosticsVirtualTextWarning guifg="s:yellow 
exe "hi LspDiagnosticsVirtualTextInformation guifg="s:grey 
exe "hi LspDiagnosticsVirtualTextHint guifg="s:white 
exe "hi LspDiagnosticsUnderlineError guifg="s:red2 
exe "hi LspDiagnosticsUnderlineWarning guifg="s:sun 
exe "hi LspDiagnosticsUnderlineInformation guifg="s:white  
exe "hi LspDiagnosticsUnderlineHint guifg="s:grey 
exe "hi LspDiagnosticsFloatingError guifg="s:red2 
exe "hi LspDiagnosticsFloatingWarning guifg="s:sun 
exe "hi LspDiagnosticsFloatingInformation guifg="s:grey 
exe "hi LspDiagnosticsFloatingHint guifg="s:white 
exe "hi LspDiagnosticsSignError guifg="s:red2 
exe "hi LspDiagnosticsSignWarning guifg="s:sun 
exe "hi LspDiagnosticsSignInformation guifg="s:grey  
exe "hi LspDiagnosticsSignHint guifg="s:white 
" telescope 
exe "hi TelescopeNormal guifg="s:red 
exe "hi TelescopeSelection guifg="s:blue "guibg="s:grey3 
exe "hi TelescopeMatching guifg="s:blue  
exe "hi TelescopeBorder guifg="s:green  
" trouble 
exe "hi TroubleFoldIcon guifg="s:green  
exe "hi TroubleIndent guifg="s:grey 
exe "hi TroubleCount guifg="s:yellow 
exe "hi TroubleNormal guifg="s:white 
exe "hi TroubleLocation guifg="s:green 
exe "hi TroubleError guifg="s:red2 
exe "hi TroubleSignError guifg="s:red 
exe "hi TroubleTextError guifg="s:red 
exe "hi TroubleWarning guifg="s:sun 
exe "hi TroubleSignWarning guifg="s:yellow  
exe "hi TroubleTextWarning guifg="s:yellow  
exe "hi TroubleInformation guifg="s:white 
exe "hi TroubleSignInformation guifg="s:blue  
exe "hi TroubleTextInformation guifg="s:sky 
exe "hi TroubleHint guifg="s:white 
exe "hi TroubleSignHint guifg="s:grey 
exe "hi TroubleTextHint guifg="s:grey 
"diagnostic 
exe "hi DiagnosticError guifg="s:red
exe "hi DiagnosticWarn guifg="s:yellow  
exe "hi DiagnosticInfo guifg="s:sun 
exe "hi DiagnosticHint guifg="s:white 
"indent_blankline
exe "hi IndentBlanklineChar guifg="s:grey3   
exe "hi IndentBlanklineSpaceChar guifg="s:grey2   
exe "hi IndentBlanklineSpaceCharBlankline guifg="s:grey3  
exe "hi IndentBlanklineContextChar guifg="s:grey2 
exe "hi IndentBlanklineContextCharStart guifg="s:grey2 
"lsp 
exe "hi LspReferenceText guifg="s:green  
exe "hi LspReferenceRead guifg="s:red
exe "hi LspReferenceWrite guifg="s:white 
exe "hi LspSignatureActiveParameter guifg="s:blue 
" which-key 
exe "hi WhichKey guifg="s:green  
exe "hi WhichKeyGroup guifg="s:red 
exe "hi WhichKeySeparator guifg="s:grey   
exe "hi WhichKeyDesc guifg="s:white  
exe "hi WhichKeyFloat guifg="s:yellow 
exe "hi WhichKeyValue guifg="s:blue 
"cmp 
exe "hi CmpItemAbbrMatch guifg="s:blue 
exe "hi CmpItemAbbrMatchFuzzy guifg="s:sun  
exe "hi CmpItemKind guifg="s:red 
exe "hi CmpItemKindDefault guifg="s:red
exe "hi CmpItemMenu guifg="s:red 
exe "hi CmpItemKindDefault guifg="s:red
exe "hi CmpItemAbbrDeprecated guifg="s:grey  
exe "hi CmpDocumentation guifg="s:grey3  
exe "hi CmpDocumentationBorder guifg="s:red  
exe "hi CmpItemAbbr  guifg="s:grey  
exe "hi CmpItemKindMethod guifg="s:white  
exe "hi CmpItemKindConstructor guifg="s:blue 
exe "hi CmpItemKindClass  guifg="s:pink 
exe "hi CmpItemKindVariabl guifg="s:red 
exe "hi CmpItemKindField  guifg="s:sky  
exe "hi CmpItemKindProperty  guifg="s:yellow 
exe "hi CmpItemKindEnumMember  guifg="s:white  
exe "hi CmpItemKindConstant guifg="s:green    
exe "hi CmpItemKindEnum guifg="s:white  
exe "hi CmpItemKindStruct guifg="s:grey  
exe "hi CmpItemKindKeyword guifg="s:red   
exe "hi CmpItemMenu guifg="s:grey  
exe "hi CmpItemKindOperator guifg="s:white 
exe "hi CmpItemKindFunction guifg="s:sky
exe "hi CmpItemKindModule guifg="s:pink 
exe "hi CmpItemKindSnippet guifg="s:sun 
exe "hi CmpItemKindFile guifg="s:white 
exe "hi CmpItemKindFolder guifg="s:grey 
exe "hi CmpItemKindColor guifg="s:red
exe "hi CmpItemKindTypeParameter guifg="s:pink2 
"nvim-tree 
exe "hi NvimTreeSymlink guifg="s:grey 
exe "hi NvimTreeFolderName guifg="s:white  
exe "hi NvimTreeRootFolder guifg="s:red2 
exe "hi NvimTreeFolderIcon guifg="s:green  
exe "hi NvimTreeEmptyFolderName guifg="s:grey 
exe "hi NvimTreeOpenedFolderName guifg="s:blue 
exe "hi NvimTreeExecFile guifg="s:sun 
exe "hi NvimTreeOpenedFile guifg="s:blue 
exe "hi NvimTreeSpecialFile guifg="s:yellow 
exe "hi NvimTreeImageFile guifg="s:pink  
exe "hi NvimTreeIndentMarker guifg="s:white 
exe "hi NvimTreeGitDirty guifg="s:green 
exe "hi NvimTreeGitStaged guifg="s:green2 
exe "hi NvimTreeGitMerge guifg="s:pink2  
exe "hi NvimTreeGitRenamed guifg="s:red 
exe "hi NvimTreeGitNew guifg="s:sun 
exe "hi NvimTreeGitDeleted guifg="s:red 
exe "hi NvimTreeWindowPicker guifg="s:white  
"Dashboard: github.com/glepnir/dashboard-nvim
exe "hi DashboardCenter  guifg="s:red 
exe "hi DashboardFooter guifg="s:red 
exe "hi DashboardHeader guifg="s:red 
" Git 
exe "hi gitcommitComment guifg="s:green 
exe "hi gitcommitUnmerged guifg="s:sky 
exe "hi gitcommitOnBranch guifg="s:grey 
exe "hi gitcommitBranch guifg="s:white 
exe "hi gitcommitDiscardedType guifg="s:red2  
exe "hi gitcommitSelectedType guifg="s:red 
exe "hi gitcommitHeader guifg="s:white  
exe "hi gitcommitUntrackedFile guifg="s:grey 
exe "hi gitcommitDiscardedFile guifg="s:grey 
exe "hi gitcommitSelectedFile guifg="s:grey 
exe "hi gitcommitUnmergedFile guifg="s:grey 
exe "hi gitcommitFile guifg="s:yellow 
exe "hi gitcommitNoBranch guifg="s:white 
exe "hi gitcommitUntracked guifg="s:sun  
exe "hi gitcommitDiscarded guifg="s:red 
exe "hi gitcommitDiscardedArrow guifg="s:red  
exe "hi gitcommitSelectedArrow guifg="s:blue  
exe "hi gitcommitUnmergedArrow guifg="s:yellow 
exe "hi SignifySignAdd guifg="s:sun 
exe "hi SignifySignChange guifg="s:blue 
exe "hi SignifySignDelete guifg="s:red 
" gitgutter: github.com/airblade/vim-gitgutter
exe "hi GitGutterAdd guifg="s:sun 
exe "hi GitGutterChange guifg="s:blue  
exe "hi GitGutterDelete guifg="s:red 
"Gitsigns github.com/lewis6991/gitsigns.nvim 
exe "hi GitSignsAdd guifg="s:sun 
exe "hi GitSignsChange guifg="s:blue  
exe "hi GitSignsDelete guifg="s:red  
"packer 
exe "hi packerString guifg="s:green 
exe "hi GitSignsChange guifg="s:blue  
exe "hi GitSignsDelete guifg="s:red2 
exe "hi GitSignsAdd guifg="s:yellow 
exe "hi GitSignsChange guifg="s:sky  
exe "hi GitSignsDelete guifg="s:red 
"""""""""""""""""""""""
" support programm 
"""""""""""""""""""""""
" C 
exe "hi cInclude guifg="s:violet 
exe "hi cPreCondit guifg="s:yellow 
exe "hi cPreConditMatch guifg="s:green  
exe "hi cType guifg="s:red
exe "hi cStorageClass guifg="s:blue  
exe "hi cStructure guifg="s:red
exe "hi cOperator guifg="s:sun 
exe "hi cStatement guifg="s:yellow 
exe "hi cTODO guifg="s:green2 
exe "hi cConstant guifg="s:green  
exe "hi cSpecial guifg="s:red 
exe "hi ccSpecialCharacter guifg="s:green  
exe "hi cString guifg="s:green2 
" c++
exe "hi cppType guifg="s:red 
exe "hi cppStorageClass guifg="s:green 
exe "hi cppStructure guifg="s:red 
exe "hi cppModifier guifg="s:blue 
exe "hi cppOperator guifg="s:sun  
exe "hi cppAccess guifg="s:violet 
exe "hi cppStatement guifg="s:yellow 
exe "hi cppConstant guifg="s:green  
exe "hi cCppString guifg="s:green  
" css 
exe "hi cssAttrComma guifg="s:red
exe "hi cssAttributeSelector guifg="s:red2 
exe "hi cssBraces guifg="s:sun 
exe "hi cssClassName guifg="s:red 
exe "hi cssClassNameDot guifg="s:red
exe "hi cssDefinition guifg="s:green2 
exe "hi cssFontAttr guifg="s:red
exe "hi cssFontDescriptor guifg="s:grey  
exe "hi cssFunctionName guifg="s:spring 
exe "hi cssIdentifier guifg="s:red 
exe "hi cssImportant guifg="s:yellow 
exe "hi cssInclude guifg="s:violet  
exe "hi cssIncludeKeyword guifg="s:red2 
exe "hi cssMediaType guifg="s:red 
exe "hi cssProp guifg="s:red2 
exe "hi cssPseudoClassId guifg="s:pink  
exe "hi cssSelectorOp guifg="s:sky 
exe "hi cssSelectorOp2 guifg="s:blue  
exe "hi cssStringQ guifg="s:green3 
exe "hi cssStringQQ guifg="s:green4 
exe "hi cssTagName guifg="s:blue 
exe "hi cssAttr guifg="s:red 
"scss sass 
exe "hi sassAmpersand guifg="s:purple  
exe "hi sassClass guifg="s:red 
exe "hi sassControl guifg="s:purple 
exe "hi sassExtend guifg="s:violet 
exe "hi sassFor guifg="s:sky 
exe "hi sassProperty guifg="s:green 
exe "hi sassFunction guifg="s:spring 
exe "hi sassId guifg="s:blue 
exe "hi sassInclude guifg="s:purple 
exe "hi sassMedia guifg="s:green2 
exe "hi sassMediaOperators guifg="s:yellow 
exe "hi sassMixin guifg="s:sky 
exe "hi sassMixinName guifg="s:red2  
exe "hi sassMixing guifg="s:blue  
exe "hi scssSelectorName guifg="s:purple 
" html 
exe "hi htmlArg guifg="s:green  
exe "hi htmlTagName guifg="s:sun 
exe "hi htmlTagN guifg="s:red 
exe "hi htmlSpecialTagName guifg="s:red
exe "hi htmlTag guifg="s:blue 
exe "hi htmlEndTag guifg="s:green 
exe "hi MatchTag guifg="s:green2  
"JavaScript 
"exe "hi javaScriptBraces guifg="s:green 
"exe "hi javaScriptFunction guifg="s:red2 
"exe "hi javaScriptIdentifier guifg="s:red 
"exe "hi javaScriptNull guifg="s:sun  
"exe "hi javaScriptNumber guifg="s:yellow 
"exe "hi javaScriptRequire guifg="s:purple 
"exe "hi javaScriptReserved guifg="s:yellow 
" js -- httpc.//github.com/pangloss/vim-javascript 
"exe "hi jsArrowFunction guifg="s:red2 
"exe "hi jsBraces guifg="s:red 
"exe "hi jsClassBraces guifg="s:green 
"exe "hi jsClassKeywords guifg="s:purple 
"exe "hi jsDocParam guifg="s:white 
"exe "hi jsDocTags guifg="s:green 
"exe "hi jsFuncBraces guifg="s:green 
"exe "hi jsFuncCall guifg="s:spring 
"exe "hi jsFuncParens guifg="s:red2 
"exe "hi jsFunction guifg="s:blue 
"exe "hi jsGlobalObjects guifg="s:red2  
"exe "hi jsModuleWords guifg="s:green  
"exe "hi jsModules guifg="s:violet 
"exe "hi jsNoise guifg="s:grey 
"exe "hi jsNull guifg="s:red2 
"exe "hi jsOperator guifg="s:white 
"exe "hi jsParens guifg="s:green 
"exe "hi jsStorageClass guifg="s:spring 
"exe "hi jsTemplateBraces guifg="s:red
"exe "hi jsTemplateVar guifg="s:red 
"exe "hi jsThis guifg="s:blue 
"exe "hi jsUndefined guifg="s:red 
"exe "hi jsObjectValue guifg="s:red
"exe "hi jsObjectKey guifg="s:red 
"exe "hi jsReturn guifg="s:red 
" httpc.//github.com/othree/yajs.vim 
"exe "hi javascriptArrowFunc guifg="s:red 
"exe "hi javascriptClassExtends guifg="s:spring  
"exe "hi javascriptClassKeyword guifg="s:red2  
"exe "hi javascriptDocNotation guifg="s:pink 
"exe "hi javascriptDocParamName guifg="s:blue 
"exe "hi javascriptDocTags guifg="s:grey 
"exe "hi javascriptEndColons guifg="s:pink  
"exe "hi javascriptExport guifg="s:violet  
"exe "hi javascriptFuncArg guifg="s:red2  
"exe "hi javascriptFuncKeyword guifg="s:purple 
"exe "hi javascriptIdentifier guifg="s:sun 
"exe "hi javascriptImport guifg="s:violet  
"exe "hi javascriptObjectLabel guifg="s:red2  
"exe "hi javascriptOpSymbol guifg="s:green2 
"exe "hi javascriptOpSymbols guifg="s:green 
"exe "hi javascriptPropertyName guifg="s:sky 
"exe "hi javascriptTemplateSB guifg="s:green2 
"exe "hi javascriptVariable guifg="s:red
" json 
exe "hi jsonCommentError guifg="s:red 
exe "hi jsonKeyword guifg="s:red 
exe "hi jsonQuote guifg="s:sun 
exe "hi jsonTrailingCommaError guifg="s:red2 
exe "hi jsonMissingCommaError guifg="s:red 
exe "hi jsonNoQuotesError2 guifg="s:red
exe "hi jsonNumError guifg="s:red 
exe "hi jsonString guifg="s:white 
exe "hi jsonBoolean guifg="s:yellow 
exe "hi jsonNumber guifg="s:yellow 
exe "hi jsonStringSQError guifg="s:red 
exe "hi jsonSemicolonError guifg="s:red
" php 
exe "hi phpClass guifg="s:blue 
exe "hi phpFunction guifg="s:red
exe "hi phpFunctions guifg="s:red2  
exe "hi phpInclude guifg="s:violet 
exe "hi phpKeyword guifg="s:purple 
exe "hi phpParent guifg="s:green 
exe "hi phpType guifg="s:sun 
exe "hi phpSuperGlobals guifg="s:yellow 
" Python 
exe "hi pythonImport guifg="s:violet 
exe "hi pythonBuiltin guifg="s:red
exe "hi pythonStatement guifg="s:white 
exe "hi pythonParam guifg="s:red
exe "hi pythonEscape guifg="s:red 
exe "hi pythonSelf guifg="s:green 
exe "hi pythonClass guifg="s:blue 
exe "hi pythonOperator guifg="s:yellow 
exe "hi pythonEscape guifg="s:sun 
exe "hi pythonFunction guifg="s:green2  
exe "hi pythonKeyword guifg="s:pink 
exe "hi pythonModule guifg="s:purple 
exe "hi pythonStringDelimiter guifg="s:sky  
exe "hi pythonSymbol guifg="s:green2 
" vim
exe "hi vimCommand guifg="s:red  
exe "hi vimCommentTitle guifg="s:grey 
exe "hi vimFunction guifg="s:blue  
exe "hi vimFuncName guifg="s:purple  
exe "hi vimHighlight guifg="s:red 
exe "hi vimLineComment guifg="s:grey 
exe "hi vimParenSep guifg="s:red 
exe "hi vimSep guifg="s:red
exe "hi vimUserFunc guifg="s:sun  
exe "hi vimVar guifg="s:blue    

