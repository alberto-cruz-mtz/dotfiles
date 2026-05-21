function upgrade --description 'alias upgrade=sudo pacman -Syu && yay -Syu && brew update && brew upgrade'
    sudo pacman -Syu && yay -Syu && brew update && brew upgrade $argv
end
