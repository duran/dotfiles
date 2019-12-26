# Linux, terminal emulator: Non-login, interactive
# Linux, X: Login, non-interactive
# MacOS, terminal emulator: Login, interactive

# Bash
#   1. /etc/profile (login) OR /etc/bash.bashrc (non-login, interactive)
#   2. ~/.bashrc (remote like scp OR non-login, interactive) OR ~/.bash_profile (login) OR ~/.bash_login (login) OR ~/.profile (login)
#   3. $BASH_ENV (non-interactive)
#   3. runs...
#   4. ~/.bash_logout (login)
# Zsh
#   1. /etc/zshenv 
#   2. ~/.zshenv
#   3. ~/.zprofile (login)
#   4. ~/.zshrc (interactive)
#   5. ~/.zlogin (login)
#   6. runs...
#   7. ~/.zlogout (login)
# Dash
#   1. ~/.profile (login)
#   2. $ENV (interactive)
#   3. runs...

# Enviromental variables

export ENV="$HOME/.config/sh/rc" # If interactive, load POSIX configuration
export PATH="$PATH:$HOME/.bin"   # Personal scripts in path
export LANG='en_IE.utf8'         # Main locale: language and standarization 
export LANGUAGE='en_US.utf8'     # Fallback locale (you can overwrite both setting with LC_ALL)

export EDITOR='vim -E' # Terminal command line editor
export VISUAL=vim      # Terminal interactive editor
export PAGER=less      # Pager
export TERMCMD=ttyterm # Terminal
export BROWSER=w3m     # Browser
export MAILER=mutt     # Mail client

export HISTSIZE=5000           # Size history 
export HISTFILESIZE=-1         # No maximum size in history file
export HISTCONTROL=ignorespace #ignoreboth:erasedups# no lines starting with space, no dups
#export HISTIGNORE="&:[ ]*:exit:ls:bg:fg:history"

# Other programs
# less, can be overwritten in ~/.lesskey with lesskey
export LESS=-R
export LESSHISTFILE=-

LESS_TERMCAP_mb=$(printf '\E[1;31m')     # begin bold
LESS_TERMCAP_md=$(printf '\E[1;36m')     # begin blink
LESS_TERMCAP_me=$(printf '\E[0m')        # reset bold/blink
LESS_TERMCAP_so=$(printf '\E[01;44;33m') # begin reverse video
LESS_TERMCAP_se=$(printf '\E[0m')        # reset reverse video
LESS_TERMCAP_us=$(printf '\E[1;32m')     # begin underline
LESS_TERMCAP_ue=$(printf '\E[0m')        # reset underline

export LESS_TERMCAP_mb
export LESS_TERMCAP_md
export LESS_TERMCAP_me
export LESS_TERMCAP_so
export LESS_TERMCAP_se
export LESS_TERMCAP_us
export LESS_TERMCAP_ue

# GNU ls (created with dircolors over .dir_colors and used with ls --colors)
export LS_COLORS='no=00:fi=00:mh=01:ex=01;31:su=31;43:sg=31;43:ca=31;43:di=01;34:st=34;43:ln=01;36:or=36;41:mi=36;41:pi=01;32:so=01;32:do=01;32:bd=01;33:cd=01;33:'

# fzf
export FZF_HOME="$HOME/.fzf"
export FZF_DEFAULT_COMMAND='fd --hidden --exclude .git'
export FZF_DEFAULT_OPTS='--bind=ctrl-j:accept'

# Rofi and other
export TERMINAL="$TERMCMD"

# Ipython
export IPYTHONDIR="$HOME/.config/ipython"

# Local configuration
test -f "$HOME/.env" && . "$HOME/.env"
