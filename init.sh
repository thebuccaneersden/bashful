
# Note: You must be in the root directory of the Bashful project
# Before executing this file.

# Symlink Bashful to ~/.bashful
if [ ! -e "/Users/$(whoami)/.bashful" ]; then
	if [ ! -d "/Users/$(whoami)/.bashful" ]; then
		ln -s "$(pwd)" "/Users/$(whoami)/.bashful2"
	fi
fi


# If Sublime isn't symlinked to /usr/local/bin, then do it
if [ ! -e "/usr/local/bin/sublime" ]; then
	ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/sublime
fi

