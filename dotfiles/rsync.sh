#!/usr/bin/env zsh
cd "$(dirname "${${(%):-%N}}")"
rsync --exclude ".git/" --exclude ".idea" --exclude ".DS_Store" --exclude "bootstrap.sh" --exclude "readme.md" -av --no-perms . ~
