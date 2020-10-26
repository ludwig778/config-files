# DOTFiles Manager

## Mise en place

Cloner le repository

```
git clone --bare git@github.com:ludwig778/dotfiles.git $HOME/.cfg
```

La mise en place

```
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
config checkout
```

## Activation des alias/scripts

Ajouter cette ligne à votre fichier $HOME/.bashrc ($HOME/.bash_profile sur Mac), pour prendre en charge les alias/scripts définis, et relancer un terminal.

```
source .cfg_dir/init.sh
```

