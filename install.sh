#install rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# fd - simpler find file
sudo apt install fd-find

# Ripgrep - better grep
curl -LO https://github.com/BurntSushi/ripgrep/releases/download/12.1.1/ripgrep_12.1.1_amd64.deb
sudo dpkg -i ripgrep_12.1.1_amd64.deb

#fzf - fuzzy finder, used by zoxide
sudo apt-get install fzf

#bat - cat with syntax highlightning
sudo apt-get install bat

# zoxide - better cd
curl -sS https://webinstall.dev/zoxide | bash

#Starship - prompt
sh -c "$(curl -fsSL https://starship.rs/install.sh)"

# emacs
sudo add-apt-repository ppa:kelleyk/emacs
sudo apt install emacs26-nox

./update_config.sh
