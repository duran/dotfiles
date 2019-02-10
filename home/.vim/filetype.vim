" vim syntax highlight customizations
if exists("did_load_filetypes")
 finish
endif

augroup filetypedetect
    au! Bufread,BufNewFile *.[Rr]md             setfiletype markdown
    au! Bufread,BufNewFile *.[ct]sv             setfiletype csv
    au! Bufread,BufNewFile qutebrowser-editor-* setfiletype markdown
augroup END
