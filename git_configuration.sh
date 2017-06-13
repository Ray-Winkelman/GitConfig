#!/bin/bash

tput rmam
git config --global user.email "raywinkelman@gmail.com"
git config --global user.name "Ray Winkelman"
git config --global alias.l "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
git config --global alias.a "add"
git config --global alias.aa "add --all"
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
git config --global alias.mp "merge -Xpatience -Xdiff-algorithm=patience -Xfind-renames -Xignore-space-change"
git config --global alias.mo "merge -s ours"
git config --global alias.show-hidden "ls-files -v | grep ^[a-z]"
git config --global alias.gcp "gc --aggressive --prune --force"
git config --global alias.commend 'commit --amend --no-edit'
git config --global alias.it \
'!git init && git commit -m "root" --allow-empty'
git config --global alias.stsh 'stash --all'
git config --global core.filemode false
git config --global color.ui always
git config --global color.branch always
git config --global color.diff always
git config --global color.interactive always
git config --global color.status always
git config --global color.grep always
git config --global color.pager true
git config --global color.decorate always
git config --global color.showbranch always
git config --global core.preloadindex true
git config --global core.ignorecase false
git config --global core.safecrlf false
git config --global advice.pushNonFastForward false
git config --global advice.statusHints false
git config --global diff.algorithm patience
git config --global diff.mnemonicprefix true
git config --global diff.renames copies
git config --global push.default tracking
git config --global rerere.enabled false
git config --global merge.stat false
git config --global merge.renamelimit 999
git config --global http.sslVerify false
git config --global http.sslCAinfo /bin/curl-ca-bundle.crt

# Windows Only
git config --global merge.tool p4merge
git config --global mergetool.p4merge.path C:/Program Files/Perforce/p4merge.exe
git config --global mergetool.p4merge.cmd '"C:/Program Files/Perforce/p4merge.exe" "$BASE" "$LOCAL" "$REMOTE" "$MERGED"'
git config --global mergetool.p4merge.trustExitCode false
git config --global mergetool.p4merge.keepTemporaries false
git config --global mergetool.p4merge.keepBackup false

# Repo Specific
#git update-index --assume-unchanged file.ext
