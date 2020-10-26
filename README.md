# Config Files Manager

## Mise en place

Cloner le repository

```
git clone git@github.com:ludwig778/config-files.git $HOME/.config
```

La mise en place

```
alias config='/usr/bin/git --git-dir=$HOME/.config/.git --work-tree=$HOME/.config'
config config --local status.showUntrackedFiles no
config checkout
```

## Activation des alias/scripts

Ajouter cette ligne à votre fichier $HOME/.bashrc ($HOME/.bash_profile sur Mac), pour prendre en charge les alias/scripts définis, et relancer un terminal.

```
source $HOME/.config/config-files/init.sh
```

