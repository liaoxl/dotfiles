#!/bin/sh

# This script helps you install the vim configuration
# run it by 'sh install.sh' or 
# 'chmod +x install.sh'
# './install.sh'

echo "Step 1: Copy Files to ~/.vimrc..."
cp vimrc ~/.vimrc
echo "Finish step 1"

echo "Step 2: Get Vundle to manage your vim"
bundleDir=~/.vim/bundle/
if [ ! -d "$bundleDir" ];
then
	echo "Make Bundle dir"
	mkdir "$bundleDir"
fi
vundleDir=~/.vim/bundle/vundle/

if [ ! -d "$vundleDir" ];
then
	echo "Git clone"
	git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
fi
echo "Finish step 2"

echo "Step 3: Manage the vim-plugin by Vundle"
vim +BundleInstall! +BundleClean +q
echo "Finish step 3"

echo "Good job!"
