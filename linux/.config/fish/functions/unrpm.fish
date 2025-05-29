function unrpm
rpm2cpio $argv[1] | cpio -imdv
end
