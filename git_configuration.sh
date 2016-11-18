#!/bin/bash

tput rmam
git config --global user.email "rwinkelman@beyondtrust.com"
git config --global user.name "Ray Winkelman"
git config --system alias.l "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
git config --system alias.a "add"
git config --system alias.aa "add --all"
git config --system alias.cm "commit -m"
git config --system alias.cam "commit -am"
git config --system alias.st "status -s -b -uall"
git config --system alias.cl "clean -dfx"
git config --system alias.ch "checkout -f"
git config --system alias.cha "checkout -f -- ."
git config --system alias.pr "pull --rebase"
git config --system alias.cp "cherry-pick"
git config --system alias.mp "merge -Xpatience -Xdiff-algorithm=patience -Xfind-renames -Xignore-space-change"
git config --system alias.mo "merge -s ours"
git config --system alias.show-hidden "ls-files -v | grep ^[a-z]"
git config --system alias.gcp "gc --aggressive --prune --force"
git config --system alias.commend 'commit --amend --no-edit'
git config --system alias.it \
'!git init && git commit -m "root" --allow-empty'
git config --system alias.stsh 'stash --all'
git config --system core.filemode false
git config --system color.ui always
git config --system color.branch always
git config --system color.diff always
git config --system color.interactive always
git config --system color.status always
git config --system color.grep always
git config --system color.pager true
git config --system color.decorate always
git config --system color.showbranch always
git config --system core.preloadindex true
git config --system core.ignorecase false
git config --system advice.pushNonFastForward false
git config --system advice.statusHints false
git config --system diff.algorithm patience
git config --system diff.mnemonicprefix true
git config --system diff.renames copies
git config --system push.default tracking
git config --system rerere.enabled false
git config --system merge.stat false
git config --system merge.renamelimit 99999 


# Windows Only
git config --global merge.tool p4merge
git config --global mergetool.p4merge.path C:/Program Files/Perforce/p4merge.exe
git config --global mergetool.p4merge.cmd '"C:/Program Files/Perforce/p4merge.exe" "$BASE" "$LOCAL" "$REMOTE" "$MERGED"'
git config --global mergetool.p4merge.trustExitCode false
git config --global mergetool.p4merge.keepTemporaries false
git config --global mergetool.p4merge.keepBackup false

# Repo Specific
#git update-index --assume-unchanged file.ext
