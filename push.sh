#!/bin/sh
# This backups the files on home and pushes them to GitHub.
cp .zshrc ~/.zshrc_backup
cp .vimrc ~/.vimrc_backup
alias gacp="git add . && git commit -m pushrc && git push"
gacp
