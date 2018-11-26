# nom

This repository is a collection of my cross-platform devops bash scripts.

Shell is kind of hideous imo and I'm not very fond of comments, but I try to keep my logic straight-forward.  If you're in this repo, good luck.

I've tried a lot of different devops tools for setup and lately I've come to believe simple shell scripts organized in a simple setup with small tools over everything is the easiest to debug and keep compatible across a bunch of different operating systems.  Maybe this just means I've finally crossed over to the dark side and have become the shell, idk, but I actively use these scripts across multiple OSX and Ubuntu machines.


# modules

supported modules must have an install.sh, example sublime/install.sh

ideally, should also have an uninstall.sh.  Script should be compatible with latest OSX and Ubuntu.  Things that only apply to one platform, example homebrew, should uname check to make sure they skip install if on ubuntu to make sure any script in here is safe to call on either platform even if it doesn't really apply to the platform it shouldn't error code.