# Installation

* [Oh My Zsh](#oh-my-zsh)
* [Manual](#manual-git-clone)

## Oh My Zsh

1. Clone this repository into `$ZSH_CUSTOM/plugins` (by default `~/.oh-my-zsh/custom/plugins`)

    ```sh
    git clone https://github.com/drouian-m/zsh-pkgmanager-switcher ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-pkgmanager-switcher
    ```

2. Add the plugin to the list of plugins for Oh My Zsh to load (inside `~/.zshrc`):

    ```sh
    plugins=( 
        # other plugins...
        zsh-pkgmanager-switcher
    )
    ```

3. Start a new terminal session.

## Manual (Git Clone)

1. Clone this repository somewhere on your machine. This guide will assume `~/.zsh/zsh-pkgmanager-switcher`.

    ```sh
    git clone https://github.com/drouian-m/zsh-pkgmanager-switcher ~/.zsh/zsh-pkgmanager-switcher
    ```

2. Add the following to your `.zshrc`:

    ```sh
    source ~/.zsh/zsh-pkgmanager-switcher/zsh-pkgmanager-switcher.zsh
    ```

3. Start a new terminal session.
