" Search mode
set nomagic     " only literals that must be escaped are \ and $
set hlsearch    " highlight matches
set incsearch   " search as characters are entered

" Wildmenu
set wildmenu               " autocomplete menu
set path+=**               " recursive search
set tags=./tags,tags;$HOME " search for file in folder and upwards til $HOME 
