
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

source ~/.cfg_dir/aliases/*

config config --local status.showUntrackedFiles no

git config --global core.excludesfile '~/.cfg_dir/config/.global_gitignore'


alias ref="source ~/.cfg_dir/init.sh"
