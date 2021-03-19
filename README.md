|                 |\*nix                                               |X11                                                  |MacOS                                                          |Windows 10|
|:----------------|:---------------------------------------------------|:----------------------------------------------------|:--------------------------------------------------------------|:---|
|Window Manager   |[Tmux](https://github.com/tmux/tmux/wiki)           |[i3](https://i3wm.org/)                              |Default                                                        |Default|
|Launcher         |None                                                |[rofi](https://github.com/davatorium/rofi)           |[Spotlight](https://en.wikipedia.org/wiki/Spotlight_(software))|[Windows Search](https://en.wikipedia.org/wiki/Windows_Search)|
|File manager     |[Ranger](https://ranger.github.io/)                 |[Ranger](https://ranger.github.io/)                  |[Ranger](https://ranger.github.io/)                            |[Ranger](https://ranger.github.io/)|
|Web Browser      |[w3m](http://w3m.sourceforge.net/)                  |[Firefox](https://www.mozilla.org/en-US/firefox/new/)|[Firefox](https://www.mozilla.org/en-US/firefox/new/)          |[Firefox](https://www.mozilla.org/en-US/firefox/new/)|
|Terminal Emulator|[Tmux](https://github.com/tmux/tmux/wiki)           |[XTerm](https://invisible-island.net/xterm/)         |[Terminal.app](https://en.wikipedia.org/wiki/Terminal_(macOS)) |[Window Terminal](https://docs.microsoft.com/en-us/windows/terminal/)|
|Basic Text Editor|[Vim](https://www.vim.org/)                         |[Vim](https://www.vim.org/)                          |[Vim](https://www.vim.org/)                                    |[Vim](https://www.vim.org/)|
|PDF Reader       |[pdftotext](https://en.wikipedia.org/wiki/Pdftotext)|[Zathura](https://pwmt.org/projects/zathura/)        |[Preview](https://support.apple.com/guide/preview/welcome/mac) |[Firefox](https://www.mozilla.org/en-US/firefox/new/)|
|Photo Viewer     |[imcat](https://github.com/stolk/imcat)             |[SXIV](https://github.com/muennich/sxiv)             |[Preview](https://support.apple.com/guide/preview/welcome/mac) |Default|
|Video Player     |[mpv](https://mpv.io/)                              |[mpv](https://mpv.io/)                               |[Quicktime](https://support.apple.com/quicktime)               ||
|Music Player     |[mpv](https://mpv.io/)                              |[mpv](https://mpv.io/)                               |[Quicktime](https://support.apple.com/quicktime)               ||
|Email Client     |                                                    |                                                     |[Microsoft Office](https://www.office.com/)                    ||
|Calendar         |                                                    |                                                     |[Microsoft Office](https://www.office.com/)                    ||
|Screen recording |[asciinema](https://asciinema.org/)                 |[OBS](https://obsproject.com/)                       |Default                                                        |[Xbox Game Bar](https://support.microsoft.com/en-us/windows/record-a-game-clip-on-your-pc-with-xbox-game-bar-2f477001-54d4-1276-9144-b0416a307f3c)|



# Windows 10

1. (Optional) Factory reset the whole thing and check if [WinGet](https://docs.microsoft.com/en-us/windows/package-manager/winget/) is out of preview.
1. Turn on Windows Linux Subsystem [(WSL 1)](https://docs.microsoft.com/en-us/windows/wsl/).
1. Go to the store and install:
  1. A Linux distribution (currently using [Ubuntu](https://www.microsoft.com/en-us/p/ubuntu/9nblggh4msv6?activetab=pivot:overviewtab))
  1. [Linux Terminal](https://www.microsoft.com/en-us/p/windows-terminal/9n0dx20hk701)
1. Log in to WSL and:
  1. Got to Windows home folder (`/mnt/c/Users/...`)
  1. Download and apply this configuration (`stow unix wsl`), add shell config.
  1. Change Linux home folder to Windows home folder (in `/etc/passwd`)
1. (Optional) Install [Microsoft PowerToys](https://docs.microsoft.com/en-us/windows/powertoys/)
1. Change default apps
