# WIP
if /bin/command -v pacman
then
    echo 'Installing everything with pacman...'
    sudo pacman -Syu
    sudo pacman -S stow rofi xorg-xbacklight redshift zathura zathura-pdf-mupdf zathura-djvu zathura-ps gnome-disk-utility
else
    echo 'Package manager not found...'
    exit 1
fi
