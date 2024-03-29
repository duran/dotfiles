# Software default reference

|                  |Unix VT100                                          |Linux X11                                              |MacOS                                                           |Windows\*  |
|:-----------------|:---------------------------------------------------|:------------------------------------------------------|:---------------------------------------------------------------|:---|
|Window Manager[^1]|[Tmux](https://github.com/tmux/tmux/wiki)-          |[i3](https://i3wm.org/)+                               |Default\*                                                       |[PowerToys FancyZones](https://learn.microsoft.com/en-us/windows/powertoys/fancyzones)|
|Launcher          |Default                                             |[rofi](https://github.com/davatorium/rofi)             |[Spotlight](https://en.wikipedia.org/wiki/Spotlight_(software)) |[PowerToys Run](https://docs.microsoft.com/en-us/windows/powertoys/run)|
|File manager+     |[Ranger](https://ranger.github.io/)                 |[PCManFM](https://wiki.lxde.org/en/PCManFM)            |[Finder](https://support.apple.com/en-us/HT201732)              |Default|
|Web Browser+      |[w3m](http://w3m.sourceforge.net/)                  |[Firefox](https://www.mozilla.org/en-US/firefox/new/)\*|[Firefox](https://www.mozilla.org/en-US/firefox/new/)\*         |[Firefox](https://www.mozilla.org/en-US/firefox/new/)|
|Terminal Emulator |[Tmux](https://github.com/tmux/tmux/wiki)-[^1]      |[XTerm](https://invisible-island.net/xterm/)           |[Kitty](https://sw.kovidgoyal.net/kitty/)                       |[Alacritty](https://alacritty.org/)|
|Basic Text Editor+|[Vim](https://www.vim.org/)                         |[Vim](https://www.vim.org/)                            |[MacVim](https://macvim-dev.github.io/macvim/)                  |[Vim](https://www.vim.org/)|
|PDF Reader        |[pdftotext](https://en.wikipedia.org/wiki/Pdftotext)|[Zathura](https://pwmt.org/projects/zathura/)          |[Preview](https://support.apple.com/guide/preview/welcome/mac)  |[SumatraPDF](https://www.sumatrapdfreader.org/free-pdf-reader)|
|Video Player-     |[mpv](https://mpv.io/)+                             |[mpv](https://mpv.io/)                                 |[Quicktime](https://support.apple.com/quicktime)                |Default|
|Photo Viewer      |[chafa](https://hpjansson.org/chafa/download/)      |[SXIV](https://github.com/muennich/sxiv)               |[Preview](https://support.apple.com/guide/preview/welcome/mac)  |[Microsoft Photos](https://en.wikipedia.org/wiki/Microsoft_Photos)|
|Music Player-     |[mpv](https://mpv.io/)+                             |[mpv](https://mpv.io/)                                 |[Quicktime](https://support.apple.com/quicktime)                |Default|
|Email Client+     |                                                    |                                                       |[Mail](https://www.office.com/)                                 |[Microsoft Office](https://www.office.com/)|
|Calendar+         |                                                    |                                                       |[Microsoft Office](https://www.office.com/)                     |[Microsoft Office](https://www.office.com/)|
|Screen recording  |[asciinema](https://asciinema.org/)                 |[OBS](https://obsproject.com/)                         |Default                                                         |[Xbox Game Bar](https://support.microsoft.com/en-us/windows/record-a-game-clip-on-your-pc-with-xbox-game-bar-2f477001-54d4-1276-9144-b0416a307f3c)|


[^1]: The Window Manager initilization is closely linked to the DE, OS, and boot loader. In Unix, install the shell files manually (`.profile`+whatever) and proceed to deal with the peculiarities of the boot loader, DE, and OS.

# Common commands

I expose OS-dependent common functionality as a single command. I expose an alias that resolves to a variable that points to an executable The current functionality is the following:

|Alias|Command|Description|
|:--|:--|:--|
|o|open|Opens URI or path with the OS default. Only one at a time.|
|s|search|Search in file paths and file contents in all computer files. Experimental.|
|t|trash|Send one file to OS trash folder. Only one at a time.|
|c|clipboard|Saves or prints OS clipboard.|
||terminal|Executes command in the terminal.|
|||||
|p|pager|Open file in terminal text pager.|
|v|visual|Opens file in terminal text editor.|
|b|browser|Opens url in terminal web browser.|


# Notes

`¹` A reference number shows a link to a particular issue.

`*` An asterisk indicates manual configuartion installation.

`+` A plus symbol marks a section to be expanded.
`-` A minus symbol warns about a no longer in use section, probably deprecated.

