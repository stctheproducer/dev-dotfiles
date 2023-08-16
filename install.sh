# Install spaceship prompt
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$HOME/.oh-my-zsh/custom/themes/spaceship-prompt" --depth=1

# Update debian dependancies
if command -v apt-get &> /dev/null; then
  sudo apt-get update
  sudo apt-get install -y bat
fi

brew install git-delta
brew install git-flow-avh

# Create symlinks
ln -nfs "$HOME/dotfiles/spaceship.zsh" "$HOME/.config/spaceship.zsh"
# ln -nfs "$HOME/dotfiles/.gitconfig" "$HOME/.gitconfig"
ln -nfs "$HOME/dotfiles/.zshrc" "$HOME/.zshrc"
ln -nfs "$HOME/.oh-my-zsh/custom/themes/spaceship-prompt/spaceship.zsh-theme" "$HOME/.oh-my-zsh/custom/themes/spaceship.zsh-theme"
