#!/bin/sh

set -e

# ${BASH_SOURCE[0]} same as $0

PREV_DIR="$(pwd)"
DIR="$(cd -P "$(dirname "$0")" && pwd)"

cd $DIR

cp bash_profile $HOME/.bash_profile
cp bashrc       $HOME/.bashrc
cp gitconfig    $HOME/.gitconfig
([ -d $HOME/.ssh/ ] || mkdir $HOME/.ssh) && cp -R ssh/* $HOME/.ssh/

chmod -R u=rwX,go= \
	$HOME/.bash* \
	$HOME/.gitconfig \
	$HOME/.ssh/

# Get to previous working directory
cd $PREV_DIR
