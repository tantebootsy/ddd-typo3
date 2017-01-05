#! /bin/bash

#http://stackoverflow.com/questions/3846380/how-to-iterate-through-all-git-branches-using-bash-script

# wrapper for command-execution
function exec_command {
	eval $1
	if [ $? -ne 0 ]; then
		echo "There was a problem with the following command: '$1'. Script will be terminated."
		exit 1
	else
		echo "... '$1' done"
	fi	
}

# bisheriges tmpl-remote umbenennen, wird ggf. später für Änderungen an der Template-Vorlage benötigt
exec_command "git remote rename origin tmpl"

# neues projekt-remote hinzufügen
echo "
Enter the URL to the project-repo to which GIT shall push changes from now on, then press [ENTER]:
WARNING! This will delete the content of the project-repo including its history!
"
exec_command "read url"

exec_command "git remote add origin $url"

# neues projekt-repo leeren + gleichzeitig pushen
exec_command "git push origin --mirror"

# master-branch zukünftig bei angabe von "git push" (ohne branchname) in neues projekt-repo pushen lassen
#exec_command "git branch master -u origin/master"

# dev-branch zukünftig bei angabe von "git push" (ohne branchname) in neues projekt-repo pushen lassen
#exec_command "git branch dev -u origin/dev"

for branch in $(git for-each-ref --format='%(refname)' refs/heads/); do
    #git log --oneline "$branch" ^origin/master
	#git branch $branch -u origin/$branch
	git reflog show $branch
done

# symlink to this script is deleted
exec_command "rm -f go.sh"

# name for project-database is asked for
echo "Enter the name of the database for the project to be created, then press [ENTER]:"

exec_command "read db"

# project-database is created (needs proper character-set and collation-settings set vi my.cnf)
exec_command "mysql -uroot -proot -e \"CREATE DATABASE $db\""