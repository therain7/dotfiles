#!/bin/bash

# show & hide dock faster
defaults write com.apple.dock autohide-delay -int 0
defaults write com.apple.dock autohide-time-modifier -float 0.2

# repeat keys on hold
defaults write -g ApplePressAndHoldEnabled -bool false

# disable annoying inline text popup (caps lock / kb layout indicator)
sudo defaults write /Library/Preferences/FeatureFlags/Domain/UIKit.plist redesigned_text_cursor -dict-add Enabled -bool false

# disable funny window opening animation
defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false
