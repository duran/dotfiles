#!/bin/sh

# Temporal file directory
# NOTE: For some reason, this bloks ssh login in AWS
export TMPDIR="$HOME/tmp"  

# Timezone. Some alias can be found in Linux in
# /usr/share/zoneinfo
export TZ='Europe/Berlin'

# This can speed considerably some text CLI tools
export LC_ALL=C

# In the future we might to change the default config file
export XDG_CONFIG_HOME="$HOME/.config"

# For Bash only
shopt -s globstar # recursive global match
