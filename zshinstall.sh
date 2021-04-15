#!/bin/bash
sudo apt-get update

sudo apt-get install zsh
sudo apt-get install curl
chsh -s $(which zsh)

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

cp Downloads/DejaVu\ Sans\ Mono\ Nerd\ Font\ Complete.ttf ~/.fonts
cp Downloads/Droid\ Sans\ Mono\ Nerd\ Font\ Complete.otf ~/.fonts
fc-cache -fv

git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
