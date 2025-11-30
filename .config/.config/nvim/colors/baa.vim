" Main Colors
let s:mainbg = '#000000'
let s:black = '#192119'
let s:red = '#8f5e56'
let s:yellow = '#8f7756'
"let s:blue = '#3f5956'
"let s:blue = '#748c83'
let s:green = '#758c74'
let s:darkgreen = '#3e5743'
let s:blue = "#81a2be"
let s:magenta = '#6b4f65'
let s:cyan = '#3f5956'
let s:white = '#676b68'
let s:white = '#676b68'
let s:color1 = '#232a2d'
let s:color2 = '#e57474'
let s:color3 = '#8ccf7e'
let s:color4 = '#e5c76b'
let s:color5 = '#67b0e8'
let s:color6 = '#c47fd5'
let s:color7 = '#6cbfbf'
let s:color8 = '#b3b9b8'
let s:color9 = '#2d3437'
let s:color10 = '#ef7e7e'
let s:color11 = '#96d988'
let s:color12 = '#f4d67a'
let s:color13 = '#71baf2'
let s:color14 = '#ce89df'
let s:color15 = '#67cbe7'
let s:color16 = '#bdc3c2'
let s:color17 = '#404749'
let s:color18 = '#161d1f'
let s:color19 = '#141b1e'
let s:color20 = '#dadada'
let s:color21 = '#2c3333'
let s:color23 = '#676b68'
let s:color24 = '#676b68'
let s:color25 = '#676b68'
let s:color26 = '#676b68'
let s:color27 = '#676b68'
let s:color28 = '#676b68'
let s:color29 = '#676b68'
let s:color30 = '#676b68'
let s:color31 = '#676b68'
let s:color32 = '#676b68'
" Support Colors
let s:white1 = '#9c9995'
let s:text = '#52504e'
let s:darkgreen1 = '#1e2120'
let s:text1 = '#474747'
let s:white2 = '#a3a3a0'

set background=dark
if version > 1
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif
set t_Co=256
let g:colors_name = "baa"

" General
exe "hi Normal guifg=" . s:white . " guibg=" . s:mainbg
exe "hi Visual guibg=" . s:white
" Cursor
exe "hi Cursor guibg=" . s:white
exe "hi CursorLineNr guibg=" . s:black
exe "hi CursorLine guibg=" . s:black
exe "hi CursorColumn guibg=" . s:black
" Complete
exe "hi Pmenu guibg=" . s:black . " guifg=" . s:white
exe "hi PmenuSel guibg=" . s:black . " guifg=" . s:black
exe "hi PmenuSbar guibg=" . s:black
exe "hi PmenuThumb guibg=" . s:black
" Search
exe "hi Search guibg=" . s:red
exe "hi IncSearch guifg=" . s:blue
" Text and Line or Numbers
exe "hi NonText guifg=" . s:white1
exe "hi StatusLine guifg=" . s:mainbg
exe "hi StatusLineNC guifg=" . s:red
exe "hi TabLine guifg=" . s:blue
exe "hi TabLineFill guifg=" . s:black
exe "hi TabLineSel guifg=" . s:white1
exe "hi LineNr guifg=" . s:white
exe "hi Todo guifg=" . s:red
exe "hi Macro guifg=" . s:darkgreen

" Syntax
exe "hi Constant guifg=" . s:blue
exe "hi String guifg=" . s:green
exe "hi Comment guifg=" . s:white
exe "hi Character guifg=" . s:blue
exe "hi Number guifg=" . s:green
exe "hi Boolean guifg=" . s:blue
exe "hi Float guifg=" . s:blue
exe "hi Identifier guifg=" . s:green
exe "hi Function guifg=" . s:green
exe "hi Statement guifg=" . s:darkgreen
exe "hi Conditional guifg=" . s:red
exe "hi Repeat guifg=" . s:red
exe "hi Label guifg=" . s:yellow
exe "hi Operator guifg=" . s:white
exe "hi Keyword guifg=" . s:darkgreen
exe "hi Define guifg=" . s:darkgreen
exe "hi PreCondit guifg=" . s:red
exe "hi PreProc guifg=" . s:darkgreen
exe "hi StorageClass guifg=" . s:cyan
exe "hi Structure guifg=" . s:cyan
exe "hi Type guifg=" . s:cyan
exe "hi Special guifg=" . s:green
exe "hi SpecialComment guifg=" . s:darkgreen
exe "hi Tag guifg=" . s:darkgreen
exe "hi Error guifg=" . s:black
exe "hi FoldColumn guibg=" . s:black
exe "hi VertSplit guibg=" . s:black
exe "hi ColorColumn guibg=" . s:black
exe "hi MatchParen guifg=" . s:black
exe "hi Directory guifg=" . s:black
exe "hi Folded guifg=" . s:red . " guibg=" . s:white
exe "hi FoldColumn guibg=" . s:white . " guifg=" . s:black
exe "hi PMenuSel guifg=" . s:red . " guibg=" . s:mainbg
" Spell Highlightings
exe "hi SpellBad guifg=" . s:mainbg
exe "hi SpellCap guifg=" . s:mainbg . " guibg=" . s:yellow
exe "hi SpellLocal guifg=" . s:mainbg
exe "hi SpellRare guifg=" . s:mainbg
" Diff Highlightings
exe "hi DiffAdd guifg=" . s:white . " guibg=" . s:mainbg
exe "hi DiffChange guifg=" . s:black . " guibg=" . s:mainbg
exe "hi DiffDelete guifg=" . s:black . " guibg=" . s:mainbg
exe "hi DiffText guifg=" . s:white . " guibg=" . s:white
" Nvim-Treesitter Highlights
exe "hi TSAttribute guifg=" . s:blue
exe "hi TSBoolean guifg=" . s:blue
exe "hi TSCharacter guifg=" . s:darkgreen
exe "hi TSComment guifg=" . s:white
exe "hi TSConditional guifg=" . s:red
exe "hi TSConstant guifg=" . s:green
exe "hi TSConstBuiltin guifg=" . s:yellow
exe "hi TSConstMacro guifg=" . s:red
exe "hi TSConstructor guifg=" . s:yellow
exe "hi TSException guifg=" . s:yellow
exe "hi TSField guifg=" . s:green
exe "hi TSFloat guifg=" . s:blue
exe "hi TSFunction guifg=" . s:green
exe "hi TSFuncBuiltin guifg=" . s:darkgreen
exe "hi TSFuncMacro guifg=" . s:green
exe "hi TSInclude guifg=" . s:darkgreen
exe "hi TSKeyword guifg=" . s:darkgreen
exe "hi TSKeywordFunction guifg=" . s:darkgreen
exe "hi TsKeywordOperator guifg=" . s:darkgreen
exe "hi TSKeywordReturn guifg=" . s:darkgreen
exe "hi TSLabel guifg=" . s:yellow
