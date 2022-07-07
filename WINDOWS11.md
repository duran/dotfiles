1\. [Install WSL](https://docs.microsoft.com/en-us/windows/wsl/install), [either 2 or 1](https://docs.microsoft.com/en-us/windows/wsl/compare-versions)
2\. Install software:
```sh
for package in Microsoft.PowerToys Lexikos.AutoHotkey Mozilla.Firefox Microsoft.WindowsTerminal Debian.Debian Canonical.Ubuntu vim.vim SumatraPDF.SumatraPDF
do
    winget.exe install $package
done
```
3\. Configure the installed Linux distros and add [WSL utilities](https://wslutiliti.es/) if not preinstalled
4\. Go through Windows and PowerToys settings and configure the system
