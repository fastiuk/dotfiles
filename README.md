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
