" Clipboard functions
" Toggles on/off  OS clipboard

function ToggleSystemClipboard()
    if match(&clipboard, "unnamedplus") < 0
        set clipboard=unnamedplus
        echo "Using system (+) clipboard"
    else
        set clipboard=unnamed
        echo "Using local (\") clipboard"
    endif
endfunction
