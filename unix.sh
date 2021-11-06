#!/bin/sh

# create history, swap, and backup directories
mkdir -p ~/.local/share/vim/{backup,swap}
# install git plugins
pack (){
    git clone "$2" "unix/.vim/pack/git/${1}/${2##*/}"
    cd "unix/.vim/pack/git/${1}/${2##*/}"
    git checkout "$3"
    cd -
}
pack start github:tpope/vim-fugitive.git a6b823b8d0a8959e81876fd4857ba822495c028a  # v3.4
pack start github:junegunn/fzf.vim d6aa21476b2854694e6aa7b0941b8992a906c5ec
