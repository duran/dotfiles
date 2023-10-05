TODO

```
[user]
    name = NAME
    email = EMAIL
```


```
# Turn on colors when using GNU ls
alias ls='ls --color'
```

```
if tmux has-session 2>/dev/null
then
  test -v TMUX && tmux attach
else
  tmux
fi
```

`.hushlogin`


```
/etc/NetworkManager/dispatcher.d/09-timezone

#!/bin/sh
case "$2" in
    up)
        timedatectl set-timezone "$(curl --fail https://ipapi.co/timezone)"
    ;;
esac

export TZ='Europe/Berlin'
```

```
 /etc/resolv.conf
# Cloudflare 
nameserver 1.1.1.1
nameserver 2606:4700:4700::1111

# Quad9
nameserver 9.9.9.10
nameserver 2620:fe::10

# Google (level3 seems fast, but I do not know if it is secure)
nameserver 8.8.8.8
nameserver 2001:4860:4860::8888
```
# Set timeout borked DNS
options timeout:1

```
fbi -- "$@"
mpv -vo drm "$@"
fbpdf -- "$@"
fbps -- "$@"
```
```
#!/bin/sh
set -eux

temp_file=$(mktemp)
trap "rm -f $temp_file" 0 2 3 15

ddjvu -skip -format=pdf "$1" "$temp_file"
ocrmypdf "$temp_file" "$2"
```

```
#!/bin/sh
# dump Docker stuff

if test "$1" = old; then
    echo docker rmi $(docker images -q --filter "dangling=true")
elif test "$1" = containers; then
    docker rm $(docker ps -aq)
elif test "$1" = images; then
    docker rmi $(docker images -q)
elif test "$1" = all; then
    docker system prune -a
else
    echo 'Choose between "old", "containers", "images", "all"'
fi

```

```
#!/bin/sh
# Reloads configuration files

case "$1" in
  'env')
    printf 'Use:\n. ~/.profile\n';;
  'sh')
    printf 'Use:\n. "$ENV"\n';;
  'bash')
    printf 'Use:\n. ~/.bashrc\n';;
  'fonts')
    fc-cache;;
  'pacman')
    sudo pacman -Syu
    sudo pacman -Sc
    ;;
  'x')
    xrdb -load ~/.Xresources;;
  'i3')
    i3-msg reload;;
  *)
    printf 'No valid command provided\n'
    exit 1
    ;;
esac
```

edit xdg-{open,terminal-exec}

xbacklight
https://askubuntu.com/questions/715306/xbacklight-no-outputs-have-backlight-property-no-sys-class-backlight-folder

How to install basic vim plugin properly?


WSL:
- Install necessary drivers
- Install Mesa
- Kitty with X11

