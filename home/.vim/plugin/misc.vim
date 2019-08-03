" Clipboard functions
" Toggles on/off  OS clipboard


" Tag jumping (needs ctags)
command MakeTags !ctags -f tags -R .

function ToggleSystemClipboard()
    if match(&clipboard, "unnamedplus") < 0
        set clipboard=unnamedplus
        echo "Using system (+) clipboard"
    else
        set clipboard=unnamed
        echo "Using local (\") clipboard"
    endif
endfunction
