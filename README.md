# Jorge's Dotfiles

This repo contains my latest dotfiles as of June 2019.

Two programs are covered in these dotfiles:

1. [Visual Studio Code](https://code.visualstudio.com)
2. [zsh](https://www.zsh.org)

## Installation

### Visual Studio Code

Install (using cp, ln, install, or whatever your system has) `vscode/settings.json` to the vscode config directory

For Linux/Mac the default directory is: `$HOME/.config/Code/User`

For Windows the default directory is: `%APPDATA%\Code\User`

### zsh

***For Linux/Mac users only.***

1. Make a directory for the zsh config.
2. Install `zsh/{.zshenv,.zshrc}` to the zsh config folder.
3. Symlink `.zshenv` to `$HOME`

Here are the shell commands assuming you're in the root of this repo

```shell
mkdir -p $HOME/.config
ln -s $(realpath zsh) $HOME/.config
ln -s $HOME/.config/zsh/.zshenv $HOME/.zshenv
```

#### Prompt

Prompt available [here](https://starship.rs/)

### tmux

```shell
ln -s $(realpath tmux/.tmux.conf) $HOME
```

## Goodies

The `.zshrc` includes three functions that can install programs that I use all the time.

| Software | Function Name |
| -------- | ------------- |
| Go       | `get_go`      |

This assumes that you are running a 64-bit Linux system.
If you'd like to change the download path for either of the above programs set the local variable `*_DOWNLOAD` in the `.zshrc` file to the appropriate one for your system.
