#! /bin/bash

#@see http://askubuntu.com/questions/29370/how-to-check-if-a-command-succeeded

# bisheriges tmpl-remote umbenennen, wird ggf. später für Änderungen an der Template-Vorlage benötigt
git remote rename origin tmpl
if [ $? -ne 0 ]; then
	echo "WARNING! Could not rename remote 'origin' to 'tmpl'. Script stops."
	exit 1 
	
else
	echo "... renamed remote 'origin' to 'tmpl'"
fi

echo "
Enter the URL to the project-repo to which GIT shall push changes from now on, then press [ENTER]:
WARNING! This will delete the content of the project-repo including its history!
"
read url
if [ $? -ne 0 ]; then
	echo "WARNING! Could not add url as origin-url. Script stops."
	exit 1
else
	echo "... ar 'url' set"
fi

# neues projekt-remote hinzufügen
git remote add origin $url
if [ $? -ne 0 ]; then
	echo "WARNING! Could not add new url as origin-url. Script stops."
	exit 1
else
	echo "... added new url as origin-url"
fi

# neues projekt-repo leeren + gleichzeitig pushen
git push origin --mirror
if [ $? -ne 0 ]; then
	echo "WARNING! Could not mirror-push to new repo 'origin'. Script stops."
	exit 1
else
	echo "... mirror-pushed to new repo 'origin'"
fi

# master-branch zukünftig bei angabe von "git push" (ohne branchname) in neues projekt-repo pushen lassen
git branch master -u origin/master
if [ $? -ne 0 ]; then
	echo "WARNING! Could not redirect master to new origin/master. Script stops."
	exit 1
else
	echo "... redirected master to new origin/master"
fi

# dev-branch zukünftig bei angabe von "git push" (ohne branchname) in neues projekt-repo pushen lassen
git branch dev -u origin/dev
if [ $? -ne 0 ]; then
	echo "WARNING! Could not redirect master to new origin/master. Script stops."
	exit 1
else
	echo "... redirected master to new origin/master"
fi

rm -f go.sh
if [ $? -ne 0 ]; then
	echo "WARNING! Could not remove symlink to this script. Script stops."
	exit 1
else
	echo "... removed symlink to this script"
fi
