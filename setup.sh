#!/bin/bash -e

mkdir -p /Users/Shared/customizations/
mkdir -p ~/.config/karabiner/
git clone git@github.com:fastiuk/karabiner-config.git /Users/Shared/customizations/karabiner-config
ln -s /Users/Shared/customizations/karabiner-config/karabiner.json ~/.config/karabiner/
