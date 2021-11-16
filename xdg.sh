# TODO: Revise this
if command -v pacman; then
    sudo pacman -S ntp
    sudo timedatectl set-ntp true
fi
