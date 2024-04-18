# Git  Commands

## Configuration

### Set user name and email

```bash
git config --global user.name "John Doe"
git config --global user.email
```

## Branches

### Create a new branch

```bash
git checkout -b <branch name>
```

### Delete a branch

```bash
git branch -d <branch name>
```

### List branches

```bash
git branch
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

## Commits

### Add changes to the staging area

```bash
git add <file name>
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

## Submodules

### Delete submodules

```bash
git rm --force <submodule path>
git rm -rf .git/modules/<submodule path>
```
