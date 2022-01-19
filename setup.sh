# Homebrew installation
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Ansible playbook
brew install ansible
ansible-playbook macos.yml

# Dotfiles
cd dotfiles && ./bootstrap.sh

# Macos options
defaults write com.google.Chrome AppleEnableSwipeNavigateWithScrolls -bool FALSE
