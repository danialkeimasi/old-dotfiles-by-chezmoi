current_path=$(dirname $(realpath $0))

if [[ $* == *--pacman* ]]; then
    echo "installing pacman packages..."
    sudo pacman -S --needed - < $current_path/pacman.txt

elif [[ $* == *--p-yay* ]]; then
    echo "installing aur packages using yay..."
    yay -S - < $current_path/yay.txt

elif [[ $* == *--p-apt* ]]; then
    echo "installing apt packages..."
    sudo apt update
    xargs sudo apt install < $current_path/apt.txt

else
    echo "You must use at least one of these flags:"
    echo "--pacman --yay --apt"
    exit 1
fi
