# Jorge's Dotfiles

This repo contains my latest dotfiles as of June 2019.

Two programs are covered in these dotfiles:

1. [Visual Studio Code](https://code.visualstudio.com)
2. [zsh](https://www.zsh.org)

## Visual Studio Code

### Installation

Install (using cp, ln, install, or whatever your system has) `vscode/settings.json` to the vscode config directory

For Linux/Mac the default directory is: `$HOME/.config/Code/User`

For Windows the default directory is: `%APPDATA%\Code\User`

## zsh

### Installation

***For Linux/Mac users only.***

1. Make a directory for the zsh config.
2. Install `zsh/{.zshenv,.zshrc}` to the zsh config folder.
3. Symlink `.zshenv` to `$HOME`

Here are the shell commands assuming you're in the root of this repo

```shell
mkdir -p $HOME/.config/zsh
cp zsh/{.zshenv,.zshrc} $HOME/.config/zsh
ln -s $HOME/.config/zsh/.zshenv $HOME/.zshenv
```

### Goodies

The `.zshrc` includes three functions that can install programs that I use all the time.

| Software | Function Name |
| -------- | ------------- |
| Go       | `get_go`      |
| Pandoc   | `get_pandoc`  |
| Bat      | `get_bat`     |

This assumes that you are running a 64-bit Linux system.
If you'd like to change the download path for either of the above programs set the local variable `*_DOWNLOAD` in the `.zshrc` file to the appropriate one for your system.
