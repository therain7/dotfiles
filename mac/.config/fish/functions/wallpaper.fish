function wallpaper
    set path (realpath $argv[1])
    osascript -e "tell application \"System Events\" to tell every desktop to set picture to \"$path\""
end
