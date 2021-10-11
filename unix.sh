# install git plugins
pack (){
    echo git clone "$2" "unix/.vim/pack/git/${1}/${2##*/}"
}
pack start github:tpope/vim-fugitive.git
pack start github:junegunn/fzf.vim
