# nom

This repository is a collection of my cross-platform devops bash scripts.

Shell is kind of hideous imo and I'm not very fond of comments, but I try to keep my logic straight-forward.  If you're in this repo, good luck.

I've tried a lot of different devops tools for setup and lately I've come to believe simple shell scripts organized in a simple setup with small tools over everything is the easiest to debug and keep compatible across a bunch of different operating systems.  This repository are my personal dev setup scripts.  Using the remote_setup.sh this repo can be used to execute remote installation when combined with a local ssh-config.


# modules

- module_name
	+ install.sh
	+ uninstall.sh

shell scripts should be bash and work in ubuntu and osx.  Needs to have an install.sh to work at all, should also have an uninstall.sh going forward.  Script should be compatible with latest OSX and Ubuntu.  Things that only apply to one platform, example homebrew, should uname check to make sure they skip install if on ubuntu to make sure any script in here is safe to call on either platform even if it doesn't really apply to that particular platform it shouldn't error code.

any given module should work by itself and deal with its own dependencies.


# shell scripting guidelines

+ use bash, not sh, not zsh or fish, just bash
+ shell scripts should be executable from any directory and not assume a current working directory to work appropriately
+ shell scripts should be self contained going down so, they should not require parent directory code, but are ok to require sub-directory code
+ if the script uses a tool that isn't guaranteed to be installed, then it should install that tool inside the script to make sure.  example: wget


# tests

Given the above requirements for modules, we can make some generalized tests to verify the above holds true so crud on modules can easily be tested. 

+ for each module create an ubuntu vm, copy the module, execute install.sh and verify exit code is 0
+ do the same with an osx vm (much more prone to bugs but should be manageable with virtualbox and older osx)
+ verify script exit code is 0 when called from some random other directory
