# Config Files Manager

## Mise en place

Cloner le repository

```
git clone git@github.com:ludwig778/config-files.git $HOME/.config
```

## Activation des alias/scripts

Ajouter cette ligne à votre fichier $HOME/.bashrc ($HOME/.bash_profile sur Mac), pour prendre en charge les alias/scripts définis.

```
source $HOME/.config/config-files/init.sh
```

Vous pourrez charger les nouveaux alias mis en place à l'aide de la commande

```
ref
```
