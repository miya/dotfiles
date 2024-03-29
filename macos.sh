#!/bin/sh

#  /'\_/`\                 /\  __`\
# /\      \     __      ___\ \ \/\ \    ____
# \ \ \__\ \  /'__`\   /'___\ \ \ \ \  /',__\
#  \ \ \_/\ \/\ \L\.\_/\ \__/\ \ \_\ \/\__, `\
#   \ \_\\ \_\ \__/.\_\ \____\\ \_____\/\____/
#    \/_/ \/_/\/__/\/_/\/____/ \/_____/\/___/

set -e


# setup screenshot
mkdir ~/Pictures/ScreenShots/
defaults write com.apple.screencapture location ~/Pictures/ScreenShots/
defaults write com.apple.screencapture name "ScreenShot"

# setup dock
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock show-recents -bool false
killall Dock
