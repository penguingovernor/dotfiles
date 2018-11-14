# Source functions
for func in $ZDOTDIR/functions/*; do
    source "$func"
done

# Source private scripts
for src in $ZDOTDIR/private/*; do
    source "$src"
done

fortune | cowsay -f tux | lolcat

# Source external scripts
for src in $ZDOTDIR/src/*; do
    source "$src"
done
