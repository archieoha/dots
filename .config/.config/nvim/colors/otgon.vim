"------------------------------------------------------------------------------
"
"     File Name           :     darker-nogto 
"     Created By          :     darker-nogto
"     Creation Date       :     [2024-02-10 14:31]
"     Last Modified       :
"     Description         :     darker color nogto 
"--------------------------------------------------------------------------------


" ---------main color --------" 
let s:mainbg='#000000'
let s:black ='#192119'
let s:red = '#8f5e56'
let s:yellow='#8f7756'
let s:blue  ='#3f5956' 
"let s:blue = '#748c83'
let s:green = '#758c74'
let s:darkgreen = '#3e5743'
let s:magenta = '#6b4f65'
let s:cyan = '#3f5956' 
let s:white = '#676b68'
"-------- support colror   -------->
let s:white1 = '#9c9995'
let s:text ='#52504e'
let s:darkgreen1 = '#1e2120'
let s:text1 ='#474747'
let s:white2 ='#a3a3a0'
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
exe "hi PmenuSel guibg="s:black    "guifg="s:black  
exe "hi PmenuSbar guibg="s:black     
exe "hi PmenuThumb guibg="s:black    
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
exe "hi Macro guifg="s:darkgreen   
"""""""""""""""""""""""
" Syntax
"""""""""""""""""""""""
" constant
exe "hi Constant guifg=" s:blue     
exe "hi String guifg=" s:green      
exe "hi Comment  guifg="s:white             
exe "hi Character  guifg="s:blue      
exe "hi Number guifg=" s:green      
exe "hi Boolean   guifg="s:blue      
exe "hi Float  guifg="s:blue   
" identifier
exe "hi Identifier guifg="s:green            
exe "hi Function  guifg="s:green   
"statement 
exe "hi Statement  guifg="s:darkgreen         
exe "hi Conditional guifg="s:red  
exe "hi Repeat  guifg=" s:red    
exe "hi Label guifg=" s:yellow        
exe "hi Operator guifg="s:white  
exe "hi Keyword  guifg="s:darkgreen     
" PreProc
exe "hi Define guifg="s:darkgreen     
exe "hi PreCondit  guifg=" s:red  
exe "hi PreProc  guifg=" s:darkgreen    
" type
exe "hi StorageClass guifg=" s:cyan       
exe "hi Structure  guifg="s:cyan       
exe "hi Type guifg="s:cyan       
" Special
exe "hi Special guifg="s:green 
exe "hi SpecialComment  guifg="s:darkgreen 
exe "hi Tag  guifg=" s:darkgreen   
" error
exe "hi Error guifg="s:black 
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
exe "hi TSCharacter guifg="s:darkgreen      
exe "hi TSComment guifg=" s:white             
exe "hi TSConditional guifg="s:red  
exe "hi TSConstant guifg="s:green  
exe "hi TSConstBuiltin guifg="s:yellow 
exe "hi TSConstMacro guifg="s:red 
exe "hi TSConstructor guifg="s:yellow    
exe "hi TSException guifg="s:yellow   
exe "hi TSField guifg="s:green  
exe "hi TSFloat guifg="s:blue  
exe "hi TSFunction guifg="s:green   
exe "hi TSFuncBuiltin guifg="s:darkgreen      
exe "hi TSFuncMacro guifg="s:green    
exe "hi TSInclude guifg="s:darkgreen     
exe "hi TSKeyword guifg="s:darkgreen     
exe "hi TSKeywordFunction guifg="s:darkgreen     
exe "hi TsKeywordOperator guifg="s:darkgreen   
exe "hi TSKeywordReturn guifg="s:darkgreen   
exe "hi TSLabel guifg="s:yellow  
exe "hi TSMethod guifg="s:green   
exe "hi TSNamespace guifg="s:green    
exe "hi TSNumber guifg="s:green    
exe "hi TSParameter guifg="s:green    
exe "hi TSParameterReference guifg="s:green  
exe "hi TSProperty guifg="s:green  
exe "hi TSPunctDelimiter guifg="s:darkgreen   
exe "hi TSPunctBracket guifg="s:darkgreen  
exe "hi TSPunctSpecial guifg="s:darkgreen   
exe "hi TSRepeat guifg=" s:red 
exe "hi TSString guifg="s:green  
exe "hi TSStringRegex guifg=" s:green   
exe "hi TSStringEscape guifg="s:blue  
exe "hi TSStringSpecial guifg="s:blue  
exe "hi TSSymbol guifg=" s:darkgreen     
exe "hi TSTag guifg="s:darkgreen    
exe "hi TSTagAttribute guifg="s:green    
exe "hi TSTagDelimiter guifg="s:green   
exe "hi TSText guifg="s:white  
exe "hi TSStrong guifg="s:darkgreen   
exe "hi TSEmphasis gui=italic"
exe "hi TSUnderline guifg="s:green     
exe "hi TSStrike guifg="s:green   
exe "hi TSTitle guifg="s:green    
exe "hi TSLiteral guifg="s:green   
exe "hi TSURI guifg="s:darkgreen   
exe "hi TSMath guifg="s:darkgreen   
exe "hi TSTextReference guifg="s:darkgreen    
exe "hi TSEnvirontment guifg="s:darkgreen  
exe "hi TSEnvironmentName guifg="s:darkgreen   
exe "hi TSNote guifg="s:red
exe "hi TSWarning guifg="s:red "guibg="s:red
exe "hi TSDanger guifg="s:green  
exe "hi TSType guifg="s:cyan     
exe "hi TSTypeBuiltin guifg="s:green  
exe "hi TSVariable guifg="s:green     
exe "hi TSVariableBuiltin guifg="s:green  
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
