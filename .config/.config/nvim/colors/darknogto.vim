"------------------------------------------------------------------------------
"
"     File Name           :     darker-nogto 
"     Created By          :     darker-nogto
"     Creation Date       :     [2024-02-10 14:31]
"     Last Modified       :
"     Description         :     darker color nogto 
"--------------------------------------------------------------------------------



let s:mainbg='#080a08'
let s:black ='#0b0f0d'
let s:red = '#4f433a'
let s:yellow='#4f4b3a'
let s:text ='##55635b'
let s:blue  ='#3a4f4d' 
let s:color1 = '#414f3a'
let s:color2 = '#3b453b'
let s:white = '#383838'
let s:white1 = '#5a635e'

set background=dark
if version > 1
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif
set t_Co=256
let g:colors_name = "darker-nogto"
""""""""""""""""""""""
" General
""""""""""""""""""""""" 
exe "hi Normal  guifg="s:white      "guibg="s:mainbg    
exe "hi Visual  guibg="s:white   
" cursor
exe "hi Cursor guibg="s:white  
exe "hi CursorLineNr guibg="s:black   
exe "hi CursorLine guibg="s:black   
exe "hi CursorColumn guibg="s:black     
" complete 
exe "hi Pmenu guibg="s:black "guifg="s:white  
exe "hi PmenuSel guibg="s:color1  "guifg="s:color2 
exe "hi PmenuSbar guibg="s:color1   
exe "hi PmenuThumb guibg="s:color2  
"search
exe "hi Search  guibg="s:red   
exe "hi IncSearch guifg="s:blue    
"text and line or numbers
exe "hi NonText  guifg="s:white1        
exe "hi StatusLine guifg="s:mainbg     
exe "hi StatusLineNC guifg="s:red    
exe "hi TabLine guifg="s:blue   
exe "hi TabLineFill guifg="s:black   
exe "hi TabLineSel guifg="s:white1  
exe "hi LineNr guifg="s:white 
exe "hi Todo guifg="s:red 
exe "hi Macro guifg="s:red  
"""""""""""""""""""""""
" Syntax
"""""""""""""""""""""""
" constant
exe "hi Constant guifg=" s:blue  
exe "hi String guifg=" s:blue   
exe "hi Comment  guifg="s:blue     
exe "hi Character  guifg="s:blue    
exe "hi Number guifg=" s:blue     
exe "hi Boolean   guifg="s:blue      
exe "hi Float  guifg="s:blue   
" identifier
exe "hi Identifier guifg="s:color1           
exe "hi Function  guifg="s:color1  
"statement 
exe "hi Statement  guifg="s:color1       
exe "hi Conditional guifg="s:color1    
exe "hi Repeat  guifg=" s:color2  
exe "hi Label guifg=" s:color2      
exe "hi Operator guifg="s:color2   
exe "hi Keyword  guifg="s:color2  
" PreProc
exe "hi Define guifg="s:color1  
exe "hi PreCondit  guifg=" s:color1  
exe "hi PreProc  guifg=" s:color1  
" type
exe "hi StorageClass guifg=" s:red    
exe "hi Structure  guifg="s:red    
exe "hi Type guifg="s:red    
" Special
exe "hi Special guifg="s:blue        
exe "hi SpecialComment  guifg="s:blue    
exe "hi Tag  guifg=" s:blue     
" error
exe "hi Error guifg="s:yellow  "guibg="s:yellow 
"others
exe "hi foldcolumn guibg="s:black      
exe "hi VertSplit guibg="s:black       "guifg="s:mainbg    
exe "hi ColorColumn guibg=" s:black     
exe "hi MatchParen guifg="s:black 
exe "hi Directory   guifg=" s:black       
exe "hi Folded guifg="s:red   "guibg="s:white 
exe "hi FoldColumn  guibg="s:white "guifg="s:black 
exe "hi PMenuSel guifg="s:red  "guibg="s:mainbg  
" Spell Highlightings
exe "hi SpellBad guifg="s:mainbg  
exe "hi SpellCap guifg="s:mainbg   "guibg="s:yellow  
exe "hi SpellLocal guifg="s:mainbg   
exe "hi SpellRare guifg="s:mainbg 
" Diff Highlightings
exe "hi DiffAdd guifg="s:white "guibg="s:mainbg  
exe "hi DiffChange guifg="s:black  "guibg="s:mainbg 
exe "hi DiffDelete guifg="s:black  "guibg="s:mainbg 
exe "hi DiffText guifg="s:white "guibg="s:white 
" Nvim-Treesitter Highlights
exe "hi TSAttribute guifg="s:blue    
exe "hi TSBoolean guifg="s:blue 
exe "hi TSCharacter guifg="s:color2     
exe "hi TSComment guifg=" s:color1   
exe "hi TSConditional guifg="s:color1    
exe "hi TSConstant guifg="s:color1 
exe "hi TSConstBuiltin guifg="s:yellow 
exe "hi TSConstMacro guifg="s:red 
exe "hi TSConstructor guifg="s:yellow    
exe "hi TSException guifg="s:red  
exe "hi TSField guifg="s:color1 
exe "hi TSFloat guifg="s:blue  
exe "hi TSFunction guifg="s:color1  
exe "hi TSFuncBuiltin guifg="s:color2     
exe "hi TSFuncMacro guifg="s:color1   
exe "hi TSInclude guifg="s:color1   
exe "hi TSKeyword guifg="s:color1  
exe "hi TSKeywordFunction guifg="s:color2    
exe "hi TsKeywordOperator guifg="s:color2  
exe "hi TSKeywordReturn guifg="s:color2  
exe "hi TSLabel guifg="s:color2  
exe "hi TSMethod guifg="s:color1  
exe "hi TSNamespace guifg="s:color1   
exe "hi TSNumber guifg="s:color1   
exe "hi TSParameter guifg="s:color1   
exe "hi TSParameterReference guifg="s:color1 
exe "hi TSProperty guifg="s:color1 
exe "hi TSPunctDelimiter guifg="s:color2  
exe "hi TSPunctBracket guifg="s:color2 
exe "hi TSPunctSpecial guifg="s:color2  
exe "hi TSRepeat guifg=" s:color1 
exe "hi TSString guifg="s:blue 
exe "hi TSStringRegex guifg=" s:blue  
exe "hi TSStringEscape guifg="s:blue  
exe "hi TSStringSpecial guifg="s:blue  
exe "hi TSSymbol guifg=" s:color2    
exe "hi TSTag guifg="s:color1   
exe "hi TSTagAttribute guifg="s:color1   
exe "hi TSTagDelimiter guifg="s:color2  
exe "hi TSText guifg="s:white  
exe "hi TSStrong guifg="s:color2  
exe "hi TSEmphasis gui=italic"
exe "hi TSUnderline guifg="s:color1    
exe "hi TSStrike guifg="s:color1  
exe "hi TSTitle guifg="s:color1   
exe "hi TSLiteral guifg="s:color1  
exe "hi TSURI guifg="s:color2  
exe "hi TSMath guifg="s:color2  
exe "hi TSTextReference guifg="s:color2   
exe "hi TSEnvirontment guifg="s:color2 
exe "hi TSEnvironmentName guifg="s:color2  
exe "hi TSNote guifg="s:red
exe "hi TSWarning guifg="s:red "guibg="s:red
exe "hi TSDanger guifg="s:color1 
exe "hi TSType guifg="s:color1   
exe "hi TSTypeBuiltin guifg="s:color1 
exe "hi TSVariable guifg="s:color1    
exe "hi TSVariableBuiltin guifg="s:color1 
" NvimTree Highlights
exe "hi NvimTreeFolderIcon guifg="s:black 
exe "hi NvimTreeFoldername guifg="s:white 
exe "hi NvimTreeOpenedFolderName guifg="s:white   
exe "hi NvimTreeEmptyFolderName guifg="s:blue  
exe "hi NvimTreeFileDirty guifg="s:black 
exe "hi NvimTreeExecFile guifg="s:white 
exe "hi NvimTreeGitDirty guifg="s:black 
exe "hi NvimTreeGitDeleted guifg="s:white  
exe "hi NvimTreeRootFolder guifg="s:red
exe "hi NvimTreeIndentMarker guifg="s:yellow 
