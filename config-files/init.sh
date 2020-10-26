CONFIG_FILES_DIR=~/.config/config-files

alias config='/usr/bin/git --git-dir=$HOME/.config/.git --work-tree=$HOME/.config'
alias ref="source $CONFIG_FILES_DIR/init.sh"

source_files () {
    for f in $1/*
    do
        source $f
    done
}

source_files $CONFIG_FILES_DIR/aliases
source_files $CONFIG_FILES_DIR/init.d

config config --local status.showUntrackedFiles no

git config --global core.excludesfile ${CONFIG_FILES_DIR}/config/global_gitignore
