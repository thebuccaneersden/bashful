#!/usr/bin/env bash

echo "     ____  ___   _____ __  ______      __"
echo "    / __ )/   | / ___// / / / __/_  __/ /"
echo "   / __  / /| | \__ \/ /_/ / /_/ / / / / "
echo "  / /_/ / ___ |___/ / __  / __/ /_/ / /  "
echo " /_____/_/  |_/____/_/ /_/_/  \__,_/_/   "
echo 
echo "  === Init Script ==="
echo



# Note: You must be in the root directory of the Bashful project
# Before executing this file.


echo "Sorting out Symlinks"

# Symlink Bashful to ~/.bashful
echo "- .bashful :"
if [ -e "/Users/$(whoami)/.bashful" ] || [ -d "/Users/$(whoami)/.bashful" ] ; then
	RAND=$RANDOM;
	echo "  Moving existing file to /Users/$(whoami)/.bashful.$RAND"
	mv "/Users/$(whoami)/.bashful" "/Users/$(whoami)/.bashful.$RAND"
fi
echo "  Symlinked bashful to ~/.bashful"
ln -s "$(pwd)" "/Users/$(whoami)/.bashful"



# Symlink Sublime to /usr/local/bin
echo "- /usr/local/bin/sublime :"
if [ -e "/usr/local/bin/sublime" ] || [ -d "/usr/local/bin/sublime" ] ; then
	RAND=$RANDOM;
	echo "  Moving existing file to /usr/local/bin/sublime.$RAND"
	mv "/usr/local/bin/sublime" "/usr/local/bin/sublime.$RAND"
fi
ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/sublime



# Symlink .profile
echo "- .profile :"
if [ -e "/Users/$(whoami)/.profile" ] || [ -d "/Users/$(whoami)/.profile" ] ; then
	RAND=$RANDOM;
	echo "  Moving existing file to /Users/$(whoami)/.profile.$RAND"
	mv "/Users/$(whoami)/.profile" "/Users/$(whoami)/.profile.$RAND"
fi
echo "  Symlinked .profile to ~/"
ln -s "$(pwd)/bash-stuff/bash_profile" "/Users/$(whoami)/.profile"



# Symlink .todo.cfg
echo "- .todo.cfg :"
if [ -e "/Users/$(whoami)/.todo.cfg" ] || [ -d "/Users/$(whoami)/.todo.cfg" ] ; then
	RAND=$RANDOM;
	echo "  Moving existing file to /Users/$(whoami)/.todo.cfg.$RAND"
	mv "/Users/$(whoami)/.todo.cfg" "/Users/$(whoami)/.todo.cfg.$RAND"
fi
echo "  Symlinked .todo.cfg to ~/"
ln -s "$(pwd)/todo-stuff/todo.cfg" "/Users/$(whoami)/.todo.cfg"



# Symlink .todo.cfg
echo "- .gitconfig :"
if [ -e "/Users/$(whoami)/.gitconfig" ] || [ -d "/Users/$(whoami)/.gitconfig" ] ; then
	RAND=$RANDOM;
	echo "  Moving existing file to /Users/$(whoami)/.gitconfig.$RAND"
	mv "/Users/$(whoami)/.gitconfig" "/Users/$(whoami)/.gitconfig.$RAND"
fi
echo "  Symlinked .gitconfig to ~/"
ln -s "$(pwd)/git-stuff/gitconfig" "/Users/$(whoami)/.gitconfig"


echo "- DONE"
