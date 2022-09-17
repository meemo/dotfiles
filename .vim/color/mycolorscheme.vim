"%% SiSU Vim color file
" Inspired by Vim 8.1's slate colorscheme, darcula, and VS Code's Dark+ theme.

:set background=dark
:highlight clear

if version > 580
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif

let colors_name = "mycolorscheme"

":hi Normal

":hi Cursor

:hi VertSplit cterm=reverse

:hi Folded ctermfg=grey ctermbg=darkgrey

:hi FoldColumn ctermfg=4 ctermbg=7

:hi IncSearch cterm=none ctermfg=yellow ctermbg=green

:hi ModeMsg cterm=none ctermfg=brown

:hi MoreMsg ctermfg=darkgreen

:hi NonText cterm=bold ctermfg=blue

:hi Question ctermfg=green

:hi Search cterm=none ctermfg=grey ctermbg=blue

:hi SpecialKey ctermfg=darkgreen

:hi StatusLine cterm=bold,reverse

:hi StatusLineNC cterm=reverse

:hi Title cterm=bold ctermfg=yellow

:hi Statement ctermfg=172

:hi Visual cterm=reverse

:hi WarningMsg ctermfg=2

:hi String ctermfg=34

:hi Comment term=bold ctermfg=245

:hi Constant ctermfg=45

:hi Special ctermfg=172

:hi Identifier ctermfg=213

:hi Include ctermfg=213

:hi PreProc ctermfg=33

:hi Operator ctermfg=7

:hi Define ctermfg=213

:hi Type ctermfg=164

:hi Function ctermfg=229

:hi Structure ctermfg=green

:hi LineNr ctermfg=240

:hi Ignore cterm=bold ctermfg=7

":hi Todo

:hi Directory ctermfg=darkcyan

:hi ErrorMsg cterm=bold cterm=bold ctermfg=7 ctermbg=1

:hi VisualNOS cterm=bold,underline

:hi WildMenu ctermfg=0 ctermbg=3

:hi DiffAdd ctermbg=4

:hi DiffChange ctermbg=5

:hi DiffDelete cterm=bold ctermfg=4 ctermbg=6

:hi DiffText cterm=bold ctermbg=1

:hi Underlined cterm=underline ctermfg=5

:hi Error cterm=bold ctermfg=7 ctermbg=1

:hi SpellErrors cterm=bold ctermfg=7 ctermbg=1

" Black ruler (colorcolumn), I don't use pure black backgrounds so it should barely be just barely visible
:hi ColorColumn term=reverse ctermbg=16
