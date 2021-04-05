#!/bin/bash -e

mkdir -p /Users/Shared/customizations/
git clone git@github.com:fastiuk/bash-aliases.git /Users/Shared/customizations/bash-aliases
ln -s /Users/Shared/customizations/bash-aliases/.bash_aliases ~/

# Setup bashrc
SCRIPT="
# Hide zsh default warning\n\
export BASH_SILENCE_DEPRECATION_WARNING=1\n\
\n\
# Source bash aliases\n\
ALIASES_PATH=/Users/Shared/customizations/bash-aliases\n\
if [ -f $ALIASES_PATH/.bash_aliases ]; then\n\
	. $ALIASES_PATH/.bash_aliases\n\
fi\n\
"

echo -e $SCRIPT >> ~/.profile
echo -e $SCRIPT >> ~/.bashrc
