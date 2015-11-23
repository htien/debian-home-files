#!/bin/sh

set -e

PREV_DIR="$(pwd)"
DIR="$(cd -P \"$(dirname $0)\" && pwd)"

cp bash_profile $HOME/.bash_profile
cp bashrc       $HOME/.bashrc
cp gitconfig    $HOME/.gitconfig
cp -R ssh/      $HOME/.ssh

chmod -R u=rwX,go= \
	$HOME/.bash* \
	$HOME/.gitconfig \
	$HOME/.ssh/

# Get to previous working directory
cd $DIR
