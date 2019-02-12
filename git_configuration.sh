#!/bin/bash

### --- User --- ###
git config --global user.email "raywinkelman@gmail.com"
git config --global user.name "Ray Winkelman"

### --- Aliases --- ###
git config --global alias.l "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
git config --global alias.a "add"
git config --global alias.aa "add --all"
git config --global alias.branchname "rev-parse --abbrev-ref HEAD"
git config --global alias.cm "commit -m"
git config --global alias.cam \
'!git add --all && git commit -m'
git config --global alias.rewind "reset --hard HEAD~1"
git config --global alias.st "status -s -b -uall"
git config --global alias.cl "clean -dfx"
git config --global alias.ch "checkout -f"
git config --global alias.cha "checkout -f -- ."
git config --global alias.pr "pull --rebase"
git config --global alias.cp "cherry-pick"
git config --global alias.ms "merge -Xpatience -Xdiff-algorithm=patience -Xfind-renames -Xignore-space-change --squash"
git config --global alias.mp "merge -Xpatience -Xdiff-algorithm=patience -Xfind-renames -Xignore-space-change"
git config --global alias.mo "merge -s ours"
git config --global alias.mt "merge -X theirs"
git config --global alias.show-hidden "ls-files -v | grep ^[a-z]"
git config --global alias.gcp "gc --aggressive --prune --force"
git config --global alias.commend 'commit --amend --no-edit'
git config --global alias.it \
'!git init && git commit -m "I am Software." --allow-empty'
git config --global alias.stsh 'stash --all'
git config --global alias.syncup '!f() { \
    read -p "Hard reset the current branch to origin/$(git rev-parse --abbrev-ref HEAD)? (y/n) " yn
    case $yn in
        [Yy]* ) git reset --hard origin/$(git rev-parse --abbrev-ref HEAD);;
    esac }; f'
git config --global alias.rs "reset --soft"
git config --global alias.rh "reset --hard"
git config --global alias.difc "diff --cached"
git config --global alias.hd "rev-parse --short HEAD"
git config --global alias.bn "rev-parse --abbrev-ref HEAD"
git config --global alias.dif '!f() { \
                               git diff -b --patience $1~1...HEAD -- $2
                             }; f'
git config --global alias.effort '!f() { \
                                 git ls-files |
                                 while read aa
                                 do
                                   set $(git log --follow --oneline "$aa" | wc)
                                   printf "%s\t%s\n" $1 "$aa"
                                 done > bb
                                 sort -nr bb | head $1
                                 rm bb 
                             }; f'
git config --global alias.firstpush '!f() { \
				git push --set-upstream origin $(git rev-parse --abbrev-ref HEAD)
                             }; f'
git config --global alias.prunebranches '!f() { \
				git fetch -p
				for branch in `git branch -vv | grep ': gone]' | awk '{print $1}'`
				do 
					git branch -D $branch
				done
                             }; f'
### --- Core --- ###
git config --global core.filemode false
git config --global core.preloadindex true
git config --global core.ignorecase false
git config --global core.safecrlf false

### --- UI --- ###
git config --global color.ui always
git config --global color.branch always
git config --global color.diff always
git config --global color.interactive always
git config --global color.status always
git config --global color.grep always
git config --global color.pager true
git config --global color.decorate always
git config --global color.showbranch always

### --- Promptings --- ###
git config --global advice.pushNonFastForward false
git config --global advice.statusHints false

### --- Diffs --- ###
git config --global diff.algorithm patience
git config --global diff.mnemonicprefix true
git config --global diff.renames copies

### --- Push --- ###
git config --global push.default tracking

### --- Rerere --- ###
git config --global rerere.enabled false

### --- Merge --- ###
git config --global merge.stat false
git config --global merge.renamelimit 0
git config --global merge.conflictstyle diff3


mergetool() {
    git config --global merge.tool meld
    git config --global mergetool.meld.keepTemporaries false
    git config --global mergetool.meld.keepBackup false
    git config --global mergetool.prompt false
}

gnomeKeyring() {
   sudo echo "Thanks, sudo."
   cd /usr/share/git/credential/gnome-keyring
   sudo make
   git config --global credential.helper /usr/share/git/credential/gnome-keyring/git-credential-gnome-keyring
}

echo -e "Have you installed the Meld mergetool?"
select YN in "Yes" "No"; do
    case $YN in
        Yes ) mergetool; break;;
        No ) break;;
    esac
done

echo -e "LINUX ONLY: Have you installed libgnome-keyring?"
select YN in "Yes" "No"; do
    case $YN in
        Yes ) gnomeKeyring; break;;
        No ) break;;
    esac
done

#TODO
#git config --global merge.tool meld
#git config --global mergetool.meld.path "C:\Program Files (x86)\Meld\Meld.exe"

echo "Git is configured."