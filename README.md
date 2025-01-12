# Git Commands

## Configuration

### Set user name and email

```bash
git config --global user.name "Rhaegal222"
git config --global user.email "rhaeagal222@gmail.com"
```

### Show current configuration

```bash
git config --list
```

### Set default editor

```bash
git config --global core.editor "nano"  # Sostituisci "nano" con il tuo editor preferito
```

---

## Submodules

### Clone a repository with all submodules (including nested submodules)

```bash
git clone --recurse-submodules --remote-submodules <repository-url>
```

### Init and update all submodules

```bash
git submodule update --init --recursive
```

### Update all submodules to the latest remote branch

```bash
git submodule update --remote --recursive
```

### Add a new submodule

```bash
git submodule add <repository-url> <path>
```

### Delete submodules

```bash
git rm --force <submodule path>
git rm -rf .git/modules/<submodule path>
```

---

## Branches

### Create a new branch

```bash
git checkout -b <branch name>
```

### Delete a branch

```bash
git branch -d <branch name>  # Usa -D per forzare la cancellazione
```

### List branches

```bash
git branch
```

### Switch between branches

```bash
git checkout <branch name>
```

### Merge a branch

```bash
git checkout <branch name>
git merge <branch name>
```

### Rename a branch

```bash
git branch -m <old branch name> <new branch name>
```

---

## Commits

### Add changes to the staging area

```bash
git add <file name>  # Usa "." per aggiungere tutti i file modificati
```

### Commit changes

```bash
git commit -m "Commit message"
```

### Amend the last commit

```bash
git commit --amend
```

### Show commit history

```bash
git log
```

### Show commit history with changes

```bash
git log -p
```

### Show commit history with changes and stats

```bash
git log --stat
```

### Revert a commit

```bash
git revert <commit-hash>
```

### Reset to a specific commit

```bash
git reset --hard <commit-hash>
```

---

## Stash

### Save changes temporarily

```bash
git stash
```

### List all stashes

```bash
git stash list
```

### Apply the last stash

```bash
git stash apply
```

### Drop the last stash

```bash
git stash drop
```

---

## Remote Repositories

### Add a remote repository

```bash
git remote add origin <repository-url>
```

### List remote repositories

```bash
git remote -v
```

### Remove a remote repository

```bash
git remote remove <remote-name>
```

### Push changes to a remote repository

```bash
git push origin <branch name>
```

### Pull changes from a remote repository

```bash
git pull origin <branch name>
```

### Fetch changes without merging

```bash
git fetch origin
```

---

## Tags

### Create a new tag

```bash
git tag <tag-name>
```

### Create an annotated tag

```bash
git tag -a <tag-name> -m "Tag message"
```

### List tags

```bash
git tag
```

### Push tags to a remote repository

```bash
git push origin <tag-name>
```

### Delete a tag locally

```bash
git tag -d <tag-name>
```

### Delete a tag remotely

```bash
git push origin --delete <tag-name>
```

---

## Logs and Status

### Show the working tree status

```bash
git status
```

### Show a summary of changes (short format)

```bash
git status -s
```

### Show detailed logs for a specific file

```bash
git log <file-name>
```

---

## Rebase

### Start a rebase

```bash
git rebase <branch-name>
```

### Abort a rebase

```bash
git rebase --abort
```

### Continue a rebase after resolving conflicts

```bash
git rebase --continue
```
