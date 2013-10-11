#!/bin/bash

# Creates symlinks for everything in ~/dotfiles in home dir

#Variables

dir=~/dotfiles
olddir=~/dotfiles_old
files=`ls -a $dir`
#files=("${files[@]:1}")

echo -n $files
#echo -n "creating $olddir for backup of existing dotfiles in ~ ..."
#mkdir -p $olddir
#echo "done"

#change to dotfiles dir
#echo -n "changing to the $dir directory ..."
#cd $dir
#echo "done"

#move existing dotfiles in homedir to dotfiles_old
#then create symlinks from homedir to dotfiles

#for file in $files; do
#	echo "Moving any existing dotfiles from ~ to $olddir"
#	mv ~/$file ~/dotfiles_old/
#	echo "Creating symlinkto $file in home directory."
#	ln -s $dir/$file ~/$file
#done

