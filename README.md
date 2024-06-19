# zsh-pkgmanager-switcher

A ZSH JavaScript package manager switcher plugin.

## Install

See [INSTALL.md](./INSTALL.md).

## Usage

### Node.JS version

The plugin automatically detect package.json and `.nvmrc` on your projects.

If the project contains a `.nvmrc` file, the plugin load the specified version (like https://github.com/Sparragus/zsh-auto-nvm-use).

Nvm and Fnm Node.js version manager are both supported.

If there is no version manager installed, the extension print the current Node.JS installed version.

### Package manager

If the packageManager key is present in the package.json file, the corepack command is executed to load the desired package manager.

The default manager package is npm.

### NVM special case

Declare the `NVM_DIR` variable **before** the plugins config in your `.zshrc` file.

```sh
export NVM_DIR=...

plugins=(zsh-pkgmanager-switcher)
```

## Demo

[![asciicast](https://asciinema.org/a/wXIhL2nZepQwgPfk6Y0Lcwe6v.svg)](https://asciinema.org/a/wXIhL2nZepQwgPfk6Y0Lcwe6v)

## Uninstallation

1. Remove the code referencing this plugin from `~/.zshrc`.

2. Remove the git repository from your hard drive

    ```sh
    rm -rf ~/.zsh/zsh-pkgmanager-switcher # Or wherever you installed
    ```
