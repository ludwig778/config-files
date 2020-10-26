alias config='/usr/bin/git --git-dir=$HOME/.config/.git --work-tree=$HOME/.config'

source_files () {
    for f in $1/*
    do
        source $f
    done
}

source_files ~/.config/config_files/aliases

config config --local status.showUntrackedFiles no

git config --global core.excludesfile '~/.config/config_files/config/global_gitignore'


alias ref="source ~/.config/config_files/init.sh"
