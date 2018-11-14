compfix() {
    for f in $(compaudit); do
        sudo chmod go-w "$f"
        [ -f $f ] && sudo chown $(whoami) "$f" || continue
        sudo chown -R "$(whoami)" "$f"
    done
}