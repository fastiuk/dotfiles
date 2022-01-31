# fish-config

Configuration files for fish shell

# Installation
Before you would use this config you will need fish shell.
You can install it by your favourite package manager or build it by yourself.
I recommend [fish v3.3.1](https://github.com/fish-shell/fish-shell/releases/tag/3.3.1).
To build it from source code use the next steps:
```
# Download fish shell source code
wget https://github.com/fish-shell/fish-shell/releases/download/3.3.1/fish-3.3.1.tar.xz
tar xvf fish-3.3.1.tar.xz
cd fish-3.1.1
# Build
mkdir build; cd build
cmake ..
make
sudo make install
fish
```

Now you are able to install
```
# Clone config to desired location
git clone https://github.com/fastiuk/fish-config
# Remove your current fish config or backup it
rm -r ~/.config/fish/
# Install new fish config
ln -s (pwd)/fish-config/fish ~/.config/fish
```

# Kudos

This config uses [bass](https://github.com/edc/bass) plugin to read bash-like rc files.
Prepare desired bashrc or other *rc files and source it in ~/.profile file.
fish-config will read ~/.profile and you will be able to use your favorite aliases/functions.

