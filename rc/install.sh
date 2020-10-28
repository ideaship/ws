#!/usr/bin/env bash

# This should be fairly safe. In case of problems with the configuration,
# just remove the lines added by this script.

cp -iv git-prompt.sh "$HOME/.git-prompt.sh"
cp -iv git-completion.bash "$HOME/.git-completion.bash"
mkdir "$HOME/.zshfuncs"
cp -iv git-completion.zsh "$HOME/.zshfuncs/_git"

cat bashrc.git >> "$HOME/.bashrc"
cat zshrc.git >> "$HOME/.zshrc"
cat vimrc.git >> "$HOME/.vimrc"

# Add a sample git alias to the repo's config
git config --local alias.lga "log --graph --all --oneline"
git config --local alias.unstage "restore --staged --"
