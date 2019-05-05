#!/bin/sh

# set reasonable macOS defaults
# inspired by : https://github.com/mathiasbynens/dotfiles
# more can be found here : https://gist.github.com/brandonb927/3195465

if [ "$(uname -s)" != "Darwin" ]; then
	exit 0
fi

set +e # set -e を無効にする

echo "  › デフォルトで AirDrop が使えるようにする "
defaults write com.apple.NetworkBrowser BrowseAllInterfaces 1

echo "  › Finderで ~/Library をデフォルトで表示させる"
chflags nohidden ~/Library

echo "  › コードを入力するときに迷惑なのでスマート引用符とスマートダッシュを無効にする"
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

echo "  › Show path bar"
defaults write com.apple.finder ShowPathbar -bool true

echo "  › Autohide Dock"
defaults write com.apple.dock autohide -bool true && killall Dock

# echo "  › Don't use native full-screen (separate Space) for MacVim"
# defaults write org.vim.MacVim MMNativeFullScreen 0
