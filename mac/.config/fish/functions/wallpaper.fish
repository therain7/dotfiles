function wallpaper
    set path (realpath $argv[1])

    /usr/libexec/PlistBuddy -c "set AllSpacesAndDisplays:Desktop:Content:Choices:0:Files:0:relative file:///$path" \
        ~/Library/Application\ Support/com.apple.wallpaper/Store/Index.plist

    killall WallpaperAgent
end
