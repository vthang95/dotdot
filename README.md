# Drivers
```bash
# disable nouveau
sudo nano /etc/modprobe.d/blacklist-nouveau.conf

# add content to config file
blacklist nouveau
options nouveau modeset=0

# run dracut
dracut -f --regenerate-all
sudo reboot

# Download driver.run file
chmod +rwx [file_name].run
sudo ./[file_name].run
dracut -f --regenerate-all
sudo reboot
```

# General
```bash
sudo zypper install git cmake freetype-devel fontconfig-devel libxcb-devel libxkbcommon-devel fzf ripgrep tmux neovim
# Add packman
sudo zypper ar -cfp 90 'https://ftp.gwdg.de/pub/linux/misc/packman/suse/openSUSE_Tumbleweed/' packman
```

# Rust
```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

# OhmyZSH
```bash
sudo zypper install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

# Alacritty
```bash
git clone https://github.com/alacritty/alacritty.git && cd alacritty
cargo build --release
infocmp alacritty
sudo cp target/release/alacritty /usr/local/bin # or anywhere else in $PATH
sudo cp extra/logo/alacritty-term.svg /usr/share/pixmaps/Alacritty.svg
sudo desktop-file-install extra/linux/Alacritty.desktop
sudo update-desktop-database
cp -r ./alacritty ~/.config/
```

# Zoxide
```bash
sudo zypper install zoxide
echo 'eval "$(zoxide init zsh)"' >> ~/.zshrc
source ~/.zshrc
```

# Nvim
```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

# Shell
```
cp .tmux.conf ~/
```

# asdf & node
```bash
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.14.0
echo '. "$HOME/.asdf/asdf.sh"' >> ~/.zshrc
source ~/.zshrc
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
curl -fsSL https://get.pnpm.io/install.sh | sh -
```

# Docker
```bash
sudo zypper in docker
sudo systemctl start docker
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
```

# Chrome
```bash
sudo zypper addrepo http://dl.google.com/linux/chrome/rpm/stable/x86_64 google-chrome

# check repo number
zypper repos

zypper modifyrepo --refresh 1
wget https://dl.google.com/linux/linux_signing_key.pub
sudo rpm --import linux_signing_key.pub
sudo zypper refresh
sudo zypper install google-chrome-stable
```

# Ibus-bamboo
```
sudo zypper install ibus make go libX11-devel libXtst-devel gtk3-devel
ibus-daemon &
wget https://github.com/BambooEngine/ibus-bamboo/archive/master.zip -O ibus-bamboo.zip
unzip ibus-bamboo.zip
cd ibus-bamboo
sudo make install
ibus restart

# Add to autostart scripts
chmod +x autostart/ibus.sh
```
