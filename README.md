# Synopsis
This is instruction how to install and use **BashAliases**

# Installation
1. Install all needed tools:

    ```sh
    $ sudo apt install git grc
    ```
    
2. Install **BashAliases**:

    ```sh
    $ git clone https://github.com/yevfast/bash-aliases.git
    $ ln -sf $PWD/bash-aliases/.bash_aliases ~/
    $ . ~/.bashrc
    ```

# Uninstallation
1. You need to remove file **.bash_aliases** from home directory:

    ```sh
    $ rm ~/.bash_aliases
    ```
## Install from terminal
Run the next command in the terminal:
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/fastiuk/bash-aliases/main/setup.sh)"
```

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
cd fish-3.3.1
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

You can also include your bash aliases to fish environment.
Just link it to .profile file.
```
cd
ln -s .bash_aliases .profile
exit
fish
```

# Kudos

* This config uses [bass](https://github.com/edc/bass) plugin to read bash-like rc files. Prepare desired bashrc or other \*rc files and source it in ~/.profile file. fish-config will read ~/.profile and you will be able to use your favorite aliases/functions.
* [Nathaniel](https://unix.stackexchange.com/users/155795/nathaniel) for [this answer](https://unix.stackexchange.com/a/278024/500340]). It allows you to use "sudo !!" - my favourite shortcut.

