#! /bin/bash

# bisheriges tmpl-remote umbenennen, wird ggf. später für Änderungen an der Template-Vorlage benötigt
git remote rename origin tmpl
echo "... renamed remote 'origin' to 'tmpl'" 

echo "
Enter the URL to the project-repo to which GIT shall push changes from now on, then press [ENTER]:
WARNING! This will delete the content of the project-repo including its history!
"
read url

# neues projekt-remote hinzufügen
git remote add origin $url
echo "... added new url as origin url"

# neues projekt-repo leeren + gleichzeitig pushen
git push origin --mirror
echo "... mirror-pushed to new repo 'origin'"

# master-branch zukünftig bei angabe von "git push" (ohne branchname) in neues projekt-repo pushen lassen
git branch master -u origin/master
echo "... redirected master to new origin/master"

rm -f ../../go.sh
echo "... removed symlink to this script"
