#install rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# fd - simpler find file
sudo apt install fd-find

# Ripgrep - better grep
curl -LO https://github.com/BurntSushi/ripgrep/releases/download/12.1.1/ripgrep_12.1.1_amd64.deb
sudo dpkg -i ripgrep_12.1.1_amd64.deb

#fzf - fuzzy finder, used by zoxide
# Use install script, since it provides fzf keybindings of Ctrl+R and ALt+C
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

#bat - cat with syntax highlightning
sudo apt-get install bat
mkdir -p ~/.local/bin
ln -s /usr/bin/batcat ~/.local/bin/bat

# zoxide - better cd
curl -sS https://webinstall.dev/zoxide | bash

#Starship - prompt
sh -c "$(curl -fsSL https://starship.rs/install.sh)"

# emacs
sudo add-apt-repository ppa:kelleyk/emacs
sudo apt install emacs28

./update_config.sh
