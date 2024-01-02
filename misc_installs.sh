# move:
# .config files
# .themes
# .icons
# .local/share/fonts

### misc/
sudo apt install curl build-essential gcc make cmake

sudo apt install \
bspwm \
sxhkd \
picom \
dmenu \
dunst \
nitrogen
alacritty \
thunar \
htop \
firefox \

### neovim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
sudo mv ./nvim.appimage /usr/local/bin/nvim

### rustc cargo
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

### eww
sudo apt install pkg-config
sudo apt install libglib2.0-dev
sudo apt-get install libgtk-3-dev
git clone https://github.com/elkowar/eww
cd eww
cargo build --release --no-default-features --features x11

cd target/releases
chmod +x ./eww
sudo mv ./eww /usr/local/bin/eww

### firefox nord theme
### https://github.com/EliverLara/firefox-nordic-theme
git clone https://github.com/EliverLara/firefox-nordic-theme && cd firefox-nordic-theme
./scripts/install.sh

### starship terminal changes
curl -sS https://starship.rs/install.sh | sh
echo '''''' >> ~/.bashrc
echo '''### newly added''' >> ~/.bashrc
echo '''eval "$(starship init bash)"''' >> ~/.bashrc
