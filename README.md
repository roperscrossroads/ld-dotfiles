# dotfiles

This repo contains the configuration to setup my machines. This is using [Chezmoi](https://chezmoi.io), the dotfile manager to setup the install.

This automated setup is currently only configured for Fedora machines.

## How to run

```shell
export GITHUB_USERNAME=roperscrossroads
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply git@github.com:$GITHUB_USERNAME/ld-dotfiles.git
```

## Original Source

This repo was forked from https://github.com/logandonley/dotfiles

## Video

An excellent explanation of how to use this can be found at https://www.youtube.com/watch?v=-RkANM9FfTM
