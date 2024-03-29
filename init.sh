CONFIG_FILES_DIR=~/.config/config-files

alias config='/usr/bin/git --git-dir=$CONFIG_FILES_DIR/.git --work-tree=$CONFIG_FILES_DIR'
alias ref="source $CONFIG_FILES_DIR/init.sh"

case $SHELL in
    */bash) SHELL_NAME="bash";;
    */zsh) SHELL_NAME="zsh";;
esac

source_files () {
    for f in $1/*
    do
        source $f
    done
}

source_files $CONFIG_FILES_DIR/aliases
source_files $CONFIG_FILES_DIR/init.d

git config --global core.excludesfile ${CONFIG_FILES_DIR}/config/global_gitignore
git config --global pull.rebase true

PATH=$PATH:/usr/local/go/bin:/home/ludwig/go/bin
