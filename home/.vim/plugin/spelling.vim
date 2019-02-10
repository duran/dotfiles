" Better spell highlighting

if version >= 700
    hi clear SpellBad
    hi clear SpellCap
    hi clear SpellRare
    hi clear SpellLocal
    hi SpellBad    ctermfg=9
    hi SpellCap    ctermfg=3    cterm=underline
    hi SpellRare   ctermfg=13   cterm=underline
    hi SpellLocal  cterm=None
endif

