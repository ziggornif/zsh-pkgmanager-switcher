# zsh-pkgmanager-switcher

A ZSH JavaScript package manager switcher plugin.

## Install

See [INSTALL.md](./INSTALL.md).

## Usage

The plugin automatically detect package.json of your projects.

If the packageManager key is present in the package.json file, the corepack command is executed to load the desired package manager.

The default manager package is npm.

## Demo

![demo](./617080.gif)

## Uninstallation

1. Remove the code referencing this plugin from `~/.zshrc`.

2. Remove the git repository from your hard drive

    ```sh
    rm -rf ~/.zsh/zsh-pkgmanager-switcher # Or wherever you installed
    ```
