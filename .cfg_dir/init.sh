alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

source_files () {
    for f in $1/*
    do
        source $f
    done
}

source_files ~/.cfg_dir/aliases

config config --local status.showUntrackedFiles no

git config --global core.excludesfile '~/.cfg_dir/config/.global_gitignore'


alias ref="source ~/.cfg_dir/init.sh"
