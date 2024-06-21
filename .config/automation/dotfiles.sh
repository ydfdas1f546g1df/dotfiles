#!/bin/bash
# This script gets the currently installed programs, stages, commits, and pushes dotfiles.

commitMessage="Automation Backup" # Define the commit message

echo "I Am "
echo whoami

# Navigate to the home directory
cd ~ || {
	echo "Failed to change directory to home. Exiting."
	exit 1
}

# Output installed package names to file
yay -Q | awk '{print $1}' >pacmanQ || {
	echo "Failed to list installed packages. Exiting."
	exit 1
}

crontab -l >crontab.bak || {
	echo "Failed to create Crontab Backup"
	exit 1
}

# Stage all changes
git add . || {
	echo "Failed to stage changes. Exiting."
	exit 1
}

# Commit the changes, only if there are any changes to commit
if git diff-index --quiet HEAD --; then
	echo "No changes to commit."

else
	git commit -m "$commitMessage" || {
		echo "Failed to commit changes. Exiting."
		exit 1
	}
fi
# Push changes to the master branch, check if push was successful
git push origin master || {
	echo "Failed to push changes to remote. Exiting."
	exit 1
}
#fi

# Remove the file after pushing
rm -f pacmanQ crontab.bak || {
	echo "Failed to remove pacmanQ crontab.bak file. Exiting."
	exit 1
}
