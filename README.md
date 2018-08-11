# Jorge's dotfiles

These dotilfes are how I like to use my machine, which is typically a copy of arch with the budgie desktop enviroment, or Ubuntu Bugdie (:

The master branch contains my latest setup, if my setup is to drastically change in any way, the current setup will become it's own branch and the new setup will become the master branch

### Supported Software
| Tool/Program 	| Associated config file(s) 	| Config Dependencies                                                                                                                                                      	|                            Config Description                           	|
|--------------	|---------------------------	|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------	|:-----------------------------------------------------------------------:	|
| zsh          	| .zshrc                    	| cowsay, fortune-mod, lolcat                                                                                                                                              	| Auto sets up antigen, sets prompt, some aliases, sets GOPATH, sets PATH 	|
| hyper        	| .hyper.js                 	| [This font](https://github.com/powerline/fonts/blob/master/Meslo%20Dotted/Meslo%20LG%20M%20DZ%20Regular%20for%20Powerline.ttf), and an emoji font (I use ttf-noto-emoji) 	|                           Sets font and style                           	|

### Cherry-Pick Installation 
1. Download and install `git` for your system
2. Clone this repo using `git`
```shell
git clone https://github.com/penguingovernor/dotfiles.git
```
3. Go into the directory using `cd`
```shell
cd dotfiles
```
4. This repo is meant to be extracted in the $HOME directory that is, the root of this directory should correspond with $HOME of your machine
    1. Move the associated config file to it's place in the filesystem

    Example:
    ```shell
    # Assuming that you are in the root of this repo
    mv .zshrc $HOME/.zshrc
    ```

### Automated Install - All Config Files Copied Over
* Coming Soon

### Screenshots

#### Zsh + Hyper
![zsh + hyper](screenshots/zsh_hyper.gif)

### Project Roadmap
- [ ] My VS Code config
- [ ] My pacman.conf config
- [x] ~~My terminal config~~
- [ ] Automated Install for debian and arch based systems
- [ ] Add screenshots to readme