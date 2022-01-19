#!/usr/bin/env bash
cd "$(dirname "${BASH_SOURCE}")"
function bootstrap() {
	rsync --exclude ".git/" --exclude ".idea" --exclude ".DS_Store" --exclude "bootstrap.sh" --exclude "readme.md" -av --no-perms . ~
}
if [ "$1" == "--force" -o "$1" == "-f" ]; then
	bootstrap
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
	echo
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		bootstrap
	fi
fi
unset doIt
source ~/.bash_profile

