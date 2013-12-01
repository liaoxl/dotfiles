#!/bin/sh

# This script helps you install the vim configuration
# run it by 'sh install.sh' or 
# 'chmod +x install.sh'
# './install.sh'

echo "Step 1: Copy Files to ~/.vimrc..."
cp ./vimfiles/vimrc ~/.vimrc
cp -r ./vimfiles/vim ~/.vim/
echo "Finish step 1"


echo "Step 2: Manage the vim-plugin by Vundle"
vim +BundleInstall! +BundleClean +q
echo "Finish step 3"

echo "Good job!"
