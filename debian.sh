set -eux
# Install Debian
# Check in your laptop model for extra info in Arch/Debian wiki
sudo dmidecode -s system-product-name
# Arch example: https://wiki.archlinux.org/title/Dell_XPS_15_(9560)
# Debian example: https://wiki.debian.org/InstallingDebianOn/Dell/Dell%20XPS%2015%209560
# Change font config in tty
sudo dpkg-configure console-setup
# Change GRUB_TIMEOUT=0 and GRUB_TIMEOUT_STYLE=hidden, maybe in sed?
sudo vi /etc/default/grub
sudo update-grub
## FIXME: Auto update
# Update repos
sudo apt update
# QOL Linux cli utilities
sudo apt install firmware-linux-nonfree coreutils util-linux moreutils git stow libglib2.0-bin surfraw curl ripgrep fzf fd-find borgmatic
# FIXME: Config git + borg
# WM (TUI)
## FIXME: send ping when work finish + vlock inside, ssh hardening
sudo apt install tmux xdg-terminal-exec vlock openssh-server
sudo apt install lf neovim w3m tmux neovim pdftotext mpv chafa asciinema
# WM (GUI)
sudo apt install xinit i3 xdg-terminal-exec rofi xsecurelock xautolock xsel xbacklight maim
sudo apt install lf neovim chromium xterm neovim zathura{,-djvu,-ps,-cb} sioyek mpv imv obs-studio
# FIXME: Configure firefox + vpn + fonts
# Install config
## TODO: symlinks borked in current edition
mkdir -p "$HOME"/.local/bin
mv xdg/.local/bin/{open,terminal} "$HOME"/.local/bin
stow unix xdg xorg

# Change size of font
vi "$HOME"/.config/x/resources
vi "$HOME"/.config/i3/chrome

# FIXME: Clean
# sudo apt install pipx
# pipx ensurepath
# pipx install pyinfra
