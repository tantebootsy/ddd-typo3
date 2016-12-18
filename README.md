# t3-tmpl
TYPO3-Template

1. clone von template-remote: git clone git@github.com:tantebootsy/t3-tmpl.git test
2. bisheriges tmpl-remote umbenennen: git remote rename origin tmpl
3. neues projekt-remote hinzufügen: git remote add origin URL_ZU_PROJEKTREPO
4. neues projekt-repo leeren + gleichzeitig pushen: git push origin --mirror
5. master-branch zukünftig bei angabe von "git push" (ohne branchname) in neues projekt-repo pushen lassen: git branch master -u origin/master

dann branch anlegen für ggf. parallel kommende änderungen am template-remote: git checkout -b tmpl EARLY_COMMIT_SHA
Then any template changes you have already made, you can cherry-pick in: git cherry-pick TEMPLATE_CHANGE_SHA. Alles weitere: http://stackoverflow.com/questions/5572772/how-can-i-use-git-for-projects-templates
