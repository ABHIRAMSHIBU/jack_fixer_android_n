#!/bin/bash
a=$(whoami)
if [ $a = "root" ]; then
	echo "Removing files from /usr/bin"
	rm -rf /usr/bin/fix_jack
	echo "Done! you have removed jack fixer."
else
	echo "You are not root, be root to continue..."
	echo Try "sudo ./install.bash"
	echo Or run "su", then "./install.bash"
fi
