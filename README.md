# fish-config

Configuration files for fish shell

# Installation

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

