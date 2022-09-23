1\. Install [Microsoft Keyboard Layout Creator](https://www.microsoft.com/en-us/download/details.aspx?id=102134) and import a KLC file for [United States International Alternate](http://keyboards.jargon-file.org/). You might need [Microsoft .NET Framework 3.5](https://www.microsoft.com/en-US/download/details.aspx?id=21).


2\. [Install WSL](https://docs.microsoft.com/en-us/windows/wsl/install), [either 2 or 1](https://docs.microsoft.com/en-us/windows/wsl/compare-versions)

3\. Install software:
```ps
$packages=@("Microsoft.PowerToys","Lexikos.AutoHotkey","Mozilla.Firefox","Microsoft.WindowsTerminal","Debian.Debian","Canonical.Ubuntu","vim.vim", "Microsoft.VisualStudioCode","SumatraPDF.SumatraPDF", "voidtools.Everything", "RStudio.quarto")
foreach($package in packages){
    winget install $package
}
```

4\. Go through Windows and PowerToys settings and configure the system*


5\. Configure the installed Linux distros and add [WSL utilities](https://wslutiliti.es/) if not preinstalled
