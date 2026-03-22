" Vim color file

highlight clear

if exists("syntax_on")
  syntax reset
endif

set termguicolors
let g:colors_name = "sunset"

let s:normal = '#E6E1FF'
let s:comment = '#6C6A8E'
let s:visual = '#555555'
let s:bg = '#060415'

let s:keyword = '#FF4D6D'
let s:string = '#4DA3FF' " 108
let s:number = '#4DA3FF' " 202

" Module -> Type -> (Function | Constant) is a common pattern in code
" The colors should transition well while keeping Function & Constant distinct
let s:module = '#FF6FAE' " '#9963DF'
let s:type = '#B983FF'
let s:function = '#8Fc6f6'
let s:constant = '#5F87FF'

let s:variable = '#D6CFFF'
let s:operator = '#FF5C8A'
let s:preproc = '#FF5C8A' " '#8A5CFF'
let s:todo = '#39C6A6'

" #FF4D6D → #FF6FAE → #B983FF → #5F87FF → #4DA3FF → #57C7FF  #4DD0E1 #3FD6C6  #39C6A6 
"
" #FF5370 → #F0719B → #C792EA → #9A7BFF → #5DA9FF → #7FDBCA

function s:HL(group, fg, ...) " group, fg, bg, gui
    if a:0 >= 1
      let bg = a:1
    else
      let bg = 'NONE'
    endif

    if a:0 >= 2 && strlen(a:2)
      let gui = a:2
    else
      let gui ='NONE'
    endif

    execute 'hi ' . a:group . ' guifg=' . a:fg . ' guibg=' . bg . ' gui=' . gui
endfunction

hi Cursor       ctermfg=235  ctermbg=231  cterm=NONE      guifg=#272822 guibg=s:normal gui=NONE
hi LineNr       ctermfg=102  ctermbg=NONE cterm=NONE      guifg=#666666 guibg=NONE    gui=NONE
hi VertSplit    ctermfg=NONE ctermbg=NONE cterm=NONE      guifg=NONE    guibg=NONE    gui=NONE
call s:HL('MatchParen', s:keyword)
call s:HL('StatusLine', s:normal, s:visual, 'bold')
call s:HL('StatusLineNC', s:normal, s:visual)
hi IncSearch    ctermfg=235  ctermbg=186  cterm=NONE      guifg=#272822 guibg=#e6db74 gui=NONE
hi Search       ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE    guibg=NONE    gui=underline
hi Directory    ctermfg=141  ctermbg=NONE cterm=NONE      guifg=#ff6600 guibg=NONE    gui=NONE
hi Folded       ctermfg=242  ctermbg=235  cterm=NONE      guifg=#75715e guibg=NONE    gui=NONE
hi SignColumn   ctermfg=NONE ctermbg=NONE cterm=NONE      guifg=NONE    guibg=NONE    gui=NONE

if &background == 'dark'
    call s:HL('Normal', s:normal, s:bg)
    call s:HL('CursorLine', 'NONE')
    call s:HL('StorageClass', s:type)
    call s:HL('Type', s:type, 'NONE')
    call s:HL('Identifier', s:normal)
    call s:HL('Module', s:module)
    call s:HL('@module', s:module) " highlight the module tree-sitter capture group
    call s:HL('Special', s:preproc)
    call s:HL('PreProc', s:preproc)
    call s:HL('@variable', s:variable)

    call s:HL('Number', s:number)
    call s:HL('Float', s:number)
    call s:HL('Boolean', s:number)
    call s:HL('Constant', s:constant)
    call s:HL('Character', s:string)
    call s:HL('String', s:string) " 167
    call s:HL('Function', s:function, 'NONE')
    call s:HL('Visual', 'NONE', s:visual)
    hi Pmenu        ctermfg=NONE ctermbg=NONE cterm=NONE      guifg=NONE    guibg=NONE    gui=NONE
    hi PmenuSel     ctermfg=NONE ctermbg=59   cterm=NONE      guifg=NONE    guibg=#49483e gui=NONE
    hi CursorColumn ctermfg=NONE ctermbg=237  cterm=NONE      guifg=NONE    guibg=#3c3d37 gui=NONE
else
    hi Normal       ctermfg=234  ctermbg=254  cterm=NONE      guifg=#000000 guibg=#f3fff9 gui=NONE
    hi CursorLine   ctermfg=NONE ctermbg=237  cterm=NONE      guifg=NONE    guibg=#eeeeee gui=NONE
    hi StorageClass ctermfg=80   ctermbg=NONE cterm=NONE      guifg=#1184de guibg=NONE    gui=italic
    hi Type         ctermfg=30   ctermbg=NONE cterm=NONE      guifg=#1184de guibg=NONE    gui=bold
    hi Identifier   ctermfg=30   ctermbg=NONE cterm=NONE      guifg=#1184de guibg=NONE    gui=italic
    hi Special      ctermfg=31   ctermbg=NONE cterm=NONE      guifg=#008888 guibg=NONE    gui=NONE
    hi PreProc      ctermfg=31   ctermbg=NONE cterm=NONE      guifg=#008888 guibg=NONE    gui=NONE
    hi Number       ctermfg=202  ctermbg=NONE cterm=NONE      guifg=#93609e guibg=NONE    gui=NONE
    hi Float        ctermfg=202  ctermbg=NONE cterm=NONE      guifg=#93609e guibg=NONE    gui=NONE
    hi Boolean      ctermfg=202  ctermbg=NONE cterm=NONE      guifg=#93609e guibg=NONE    gui=NONE
    hi Constant     ctermfg=202  ctermbg=NONE cterm=NONE      guifg=#93609e guibg=NONE    gui=NONE
    hi Character    ctermfg=202  ctermbg=NONE cterm=NONE      guifg=#93609e guibg=NONE    gui=NONE
    hi String       ctermfg=167  ctermbg=NONE cterm=NONE      guifg=#847327 guibg=NONE    gui=NONE
    hi Function     ctermfg=254  ctermbg=NONE cterm=NONE      guifg=NONE    guibg=NONE    gui=NONE
    hi Visual       ctermfg=NONE ctermbg=6    cterm=NONE      guifg=NONE    guibg=#e4e4e4 gui=NONE
    hi CursorColumn ctermfg=NONE ctermbg=237  cterm=NONE      guifg=NONE    guibg=#e4e4e4 gui=NONE
    hi Pmenu        ctermfg=NONE ctermbg=NONE cterm=NONE      guifg=NONE    guibg=#e4e4e4 gui=NONE
    hi PmenuSel     ctermfg=NONE ctermbg=59   cterm=NONE      guifg=NONE    guibg=#d3d3d0 gui=NONE
endif

call s:HL('Comment', s:comment, 'NONE', 'italic')
call s:HL('Conditional', s:keyword)
hi Define       ctermfg=1    ctermbg=NONE cterm=NONE      guifg=#aa0000 guibg=NONE    gui=NONE
hi DiffAdd      ctermfg=231  ctermbg=64   cterm=bold      guifg=#f8f8f2 guibg=#46830c gui=bold
hi DiffDelete   ctermfg=88   ctermbg=NONE cterm=NONE      guifg=#8b0807 guibg=NONE    gui=NONE
hi DiffChange   ctermfg=NONE ctermbg=NONE cterm=NONE      guifg=#f8f8f2 guibg=#243955 gui=NONE
hi DiffText     ctermfg=231  ctermbg=24   cterm=bold      guifg=#f8f8f2 guibg=#204a87 gui=bold
hi ErrorMsg     ctermfg=231  ctermbg=197  cterm=NONE      guifg=#f8f8f0 guibg=#aa0000 gui=NONE
hi WarningMsg   ctermfg=3    ctermbg=197  cterm=NONE      guifg=#f8f8f0 guibg=#aa0000 gui=NONE
call s:HL('Keyword', s:keyword, 'NONE')
hi Label        ctermfg=186  ctermbg=NONE cterm=NONE      guifg=#e6db74 guibg=NONE    gui=NONE
hi NonText      ctermfg=NONE ctermbg=NONE cterm=NONE      guifg=#49483e guibg=NONE    gui=NONE
call s:HL('Operator', s:operator)
hi SpecialKey   ctermfg=1    ctermbg=237  cterm=NONE      guifg=#49483e guibg=#3c3d37 gui=NONE
hi Statement    ctermfg=1    ctermbg=NONE cterm=NONE      guifg=#aa0000 guibg=NONE    gui=bold
hi Tag          ctermfg=197  ctermbg=NONE cterm=NONE      guifg=#aa0000 guibg=NONE    gui=NONE
hi Title        ctermfg=231  ctermbg=NONE cterm=bold      guifg=#f8f8f2 guibg=NONE    gui=bold
call s:HL('Todo', s:todo)
hi Underlined   ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE    guibg=NONE    gui=underline

hi htmlTag      ctermfg=NONE ctermbg=NONE cterm=NONE      guifg=NONE    guibg=NONE    gui=NONE
hi htmlEndTag   ctermfg=NONE ctermbg=NONE cterm=NONE      guifg=NONE    guibg=NONE    gui=NONE
hi htmlTagName  ctermfg=NONE ctermbg=NONE cterm=NONE      guifg=NONE    guibg=NONE    gui=NONE
hi htmlArg      ctermfg=NONE ctermbg=NONE cterm=NONE      guifg=NONE    guibg=NONE    gui=NONE
hi yamlKey      ctermfg=197  ctermbg=NONE cterm=NONE      guifg=#aa0000 guibg=NONE    gui=NONE
hi yamlAnchor   ctermfg=NONE ctermbg=NONE cterm=NONE      guifg=NONE    guibg=NONE    gui=NONE
hi yamlAlias    ctermfg=NONE ctermbg=NONE cterm=NONE      guifg=NONE    guibg=NONE    gui=NONE
hi cssURL       ctermfg=208  ctermbg=NONE cterm=NONE      guifg=#fd971f guibg=NONE    gui=italic
hi cssColor     ctermfg=141  ctermbg=NONE cterm=NONE      guifg=#ff6600 guibg=NONE    gui=NONE
hi cssClassName ctermfg=148  ctermbg=NONE cterm=NONE      guifg=#a6e22e guibg=NONE    gui=NONE
hi cssBraces    ctermfg=NONE ctermbg=NONE cterm=NONE      guifg=NONE    guibg=NONE    gui=NONE
