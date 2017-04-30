#!/bin/sh

################################
# Retrieve installation Prefix #
################################
INSTALL_PREFIX=$HOME/usr
echo -n "Prefix [$INSTALL_PREFIX]: "
read usr_prefix

case "$usr_prefix" in
	'') echo "Install in: $INSTALL_PREFIX" ;;
	/*) INSTALL_PREFIX=$usr_prefix; echo "Install in: $INSTALL_PREFIX" ;;
	*) echo "Expected an absolute path. Got: $INSTALL_PREFIX" 1>&2
	   exit 1;;
esac

#############################
# Retrieve source directory #
#############################
SCRIPT_DIR=`dirname $0`
ABS_SCRIPT_DIR=`realpath "$SCRIPT_DIR"`


########################
# Install Bash Profile #
########################
if test -e $HOME/.profile
then
	cp $HOME/.profile $HOME/.profile.bak
	rm $HOME/.profile
fi
ln -s $ABS_SCRIPT_DIR/bash/profile $HOME/.profile

######################
# Install Git config #
######################
if test -e $HOME/.gitconfig
then
	cp $HOME/.gitconfig $HOME/.gitconfig.bak
fi
echo "" >> $HOME/.gitconfig
echo "[include]" >> $HOME/.gitconfig
echo "	path = ${ABS_SCRIPT_DIR}/git/gitconfig_extra" >> $HOME/.gitconfig
echo "[core"] >> $HOME/.gitconfig
echo "	excludesfile = ${ABS_SCRIPT_DIR}/git/gitignore_globals" >> $HOME/.gitconfig

######################
# Install Misc tools #
######################
mkdir -p $INSTALL_PREFIX/bin
ln -s $ABS_SCRIPT_DIR/misc/meteo    $INSTALL_PREFIX/bin/
ln -s $ABS_SCRIPT_DIR/misc/pyserv   $INSTALL_PREFIX/bin/
ln -s $ABS_SCRIPT_DIR/misc/tea-time $INSTALL_PREFIX/bin/

######################
# Install Vim Config #
######################
if test -e $HOME/.vimrc
then
	cp $HOME/.vimrc $HOME/.vimrc.bak
fi
if test -e $HOME/.vim
then
	cp -r $HOME/.vim $HOME/.vim.bak
fi
ln -s $ABS_SCRIPT_DIR/vim $HOME/.vim
ln -s $ABS_SCRIPT_DIR/vim/vimrc $HOME/.vimrc

######################################
# Install mate desktop configuration #
######################################
mkdir -p $INSTALL_PREFIX/bin
ln -s $ABS_SCRIPT_DIR/mate/firefox-launcher $INSTALL_PREFIX/bin/
dconf load / < $ABS_SCRIPT_DIR/mate/keybindings
dconf load / < $ABS_SCRIPT_DIR/mate/terminal
dconf load / < $ABS_SCRIPT_DIR/mate/workspaces
$ABS_SCRIPT_DIR/mate/ff-set-conf $INSTALL_PREFIX/bin | dconf load /
