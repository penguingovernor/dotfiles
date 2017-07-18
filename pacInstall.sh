#!/usr/bin/env bash

# Backup prompt
echo "Backup old configs before preceding? (y/n)"
read backupConfirm
if test "$backupConfirm" = "y"
then

  if [ -d ~/.config ]; then
      tar -czvf oldConfig.tar.gz ~/.config
    fi

  if [ -d ~/.atom ]; then
    tar -czvf oldAtom.tar.gz ~/.atom
  fi

  if [ -d ~/.vim ]; then
  mv ~/.vimrc ~/.vim
  tar  -czvf oldVim.tar.gz ~/.vim
  fi

fi

echo "Install packages onto the system? (y/n)"
read installPackages
if test "$installPackages" = "y"
then
# Install CLI utilities
echo Installing the following:
echo fish vim jdk8-openjdk nodejs npm ctags wget openssh gcc valgrind git fortune-mod cowsay make
sudo pacman -S fish vim jdk8-openjdk nodejs npm ctags wget openssh gcc valgrind git fortune-mod cowsay make

# Install gui applications
echo Installing the following:
echo atom terminator chromium
sudo pacman -S atom terminator chromium
fi

echo "Install atom applications? (y/n)"
read installAtom
if test "$installAtom" = "y"
then
# Install atom packages
echo Installing atom packages
apm install docblockr
apm install atom-beautify
apm install autohide-tree-view
apm install busy-signal
apm install figlet
apm install highlight-line
apm install highlight-selected
apm install intentions
apm install linter
apm install linter-gcc
apm install linter-javac
apm install linter-ui-default
apm install minimap
apm install minimap-cursorline
apm install minimap-highlight-selected
apm install atom-material-ui
apm install atom-panda-syntax
fi

echo "Configure packages? (y/n)"
read configPackages
if test "$configPackages" = "y"
then
# Make .config if not already existent
if [ ! -d ~/.config ]; then
  mkdir ~/.config
fi

# Make .config/fish if not already existent
if [ ! -d ~/.config/fish ]; then
  mkdir ~/.config/fish
  rm -f ~/.config/terminator/config.fish
fi

# Make .config/terminator if not already existent
if [ ! -d ~/.config/terminator ]; then
  mkdir ~/.config/terminator
fi

# Make .fonts directory if not already existent
if [ ! -d ~/.fonts ]; then
  mkdir ~/.fonts
fi

# Make vim directory if not already existent
if [ ! -d ~/.vim ]; then
  mkdir ~/.vim/
fi

if [ ! -d ~/.vim/colors ]; then
  mkdir ~/.vim/colors/
fi

# Install fonts
echo Installing fonts
cp ./fonts/*.ttf ~/.fonts

# Configure fish
echo configuring fish
cp ./fish/config.fish ~/.config/fish/config.fish

# configure atom
rm -f ~/.atom/config.cson
cp ./atom/config.cson ~/.atom/config.cson

# config terminator
cp ./terminator/config ~/.config/terminator/

# config vim
cp ./vim/.vimrc ~/
cp ./vim/dracula.vim ~/.vim/colors
fi



echo Script has finished!
