#!/bin/bash
# Gets the current directory
SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
  DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
done
DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"

npm install -g eslint
npm install -g jscs
git clone https://github.com/gmarik/vundle.vim.git ~/.vim/bundle/Vundle.vim
ln -sf $DIR/.vimrc ~/.vimrc
brew install ctags
