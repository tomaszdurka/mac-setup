# Homebrew installation
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Ansible playbook
brew install ansible
ansible-playbook macos.yml

# Dotfiles
dotfiles/rsync.sh

# Macos options
defaults write com.google.Chrome AppleEnableSwipeNavigateWithScrolls -bool FALSE
