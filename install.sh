# fd - simpler find file
sudo apt install fd-find

# Ripgrep - better grep
curl -LO https://github.com/BurntSushi/ripgrep/releases/download/12.1.1/ripgrep_12.1.1_amd64.deb
sudo dpkg -i ripgrep_12.1.1_amd64.deb

#fzf - fuzzy finder, used by zoxide
sudo apt-get install fzf

# zoxide - better cd
curl -sS https://webinstall.dev/zoxide | bash

cp .gitconfig ~/
cp .bashrc ~/
source ~/.bashrc

#Starship - prompt
sh -c "$(curl -fsSL https://starship.rs/install.sh)"
cp -r ./config ~/
