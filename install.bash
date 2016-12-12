#!/bin/bash
a=$(whoami)
if [ $a = "root" ]; then
	echo "Copying file to /usr/bin"
	cp ./fix_java /usr/bin/fix_jack
	echo "Making the file executable"
	chmod +x /usr/bin/fix_jack
	echo "Done! run fix_jack to fix jack."
else
	echo "You are not root, be root to continue..."
	echo Try "sudo ./install.bash"
	echo Or run "su", then "./install.bash"
fi
