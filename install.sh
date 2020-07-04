#!/bin/sh

echo "define var"
ITERM_THEME='dracula-iterm-theme'
TERM_THEME='dracula-term-theme'
ZSH_THEME='dracula-zsh-theme'
D2_CODING_FONT='d2codingfont'

echo "clear home files"
rm -rf ~/.alias.sh
rm -rf ~/.exports.sh
rm -rf ~/.zshrc

echo "install homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install zsh
brew install ripgrep
brew install node
brew install yarn

echo "install osx app using cask"
brew cask install bartender
brew cask install istat-menus
brew cask install keka
brew cask install slack
brew cask install app-cleaner
brew cask install karabiner-elements
brew cask install alfred
brew cask install gitkraken
brew cask install zeplin
brew cask install flipper
brew cask install postman
brew cask install google-chrome
brew cask install visual-studio-code
brew cask install notion
brew cask install trello

echo "install oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "install dependency"

rm -rf $ITERM_THEME
rm -rf $TERM_THEME
rm -rf $D2_CODING_FONT
rm -rf $ZSH_THEME

git clone https://github.com/dracula/iterm.git $ITERM_THEME
git clone https://github.com/dracula/terminal-app.git $TERM_THEME
git clone https://github.com/naver/d2codingfont.git $D2_CODING_FONT
git clone https://github.com/dracula/zsh.git $ZSH_THEME

ln -sf $(pwd)/.alias.sh ~/.alias.sh
ln -sf $(pwd)/.exports.sh ~/.exports.sh
ln -sf $(pwd)/$ZSH_THEME/*.zsh-theme ~/.oh-my-zsh/custom/themes
ln -sf $(pwd)/.zshrc ~/.zshrc

exec zsh