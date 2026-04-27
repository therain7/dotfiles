function gits --wraps='git -c delta.side-by-side=1' --wraps='git -c delta.side-by-side=true' --description 'alias gits=git -c delta.side-by-side=true'
    git -c delta.side-by-side=true $argv
end
