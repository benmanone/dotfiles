function rsym -d "Remove symlink and replace with regular file"
    cp --remove-destination $(readlink $argv[1]) $argv[1]
end
