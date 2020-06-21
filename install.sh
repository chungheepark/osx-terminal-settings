#!/bin/sh

ITERM_THEME='dracula-iterm-theme'
TERM_THEME='dracula-term-theme'
D2_CODING_FONT='d2codingfont'

rm -rf $ITERM_THEME
git clone https://github.com/dracula/iterm.git $ITERM_THEME

rm -rf $TERM_THEME
git clone https://github.com/dracula/terminal-app.git $TERM_THEME

rm -rf $D2_CODING_FONT
git clone https://github.com/naver/d2codingfont.git $D2_CODING_FONT

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install zsh ripgrep
brew install node
brew install yarn

npm install --global pure-prompt

sh ./apply_plugin.sh

TERMINAL_PATH=$(pwd)

rm -rf ~/.alias.sh
rm -rf ~/.exports.sh
rm -rf ~/.zshrc
rm -rf ~/.zsh_plugins.sh

ln -s $TERMINAL_PATH/.alias.sh ~/.alias.sh
ln -s $TERMINAL_PATH/.exports.sh ~/.exports.sh
ln -s $TERMINAL_PATH/.zsh_plugins.sh ~/.zsh_plugins.sh
ln -s $TERMINAL_PATH/.zshrc ~/.zshrc

source ~/.zshrc