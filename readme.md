# git init

A guide on getting started with git

---

## Why git

- Track changes
- Collaborate
- Single source of truth
- Backup

---

## Concepts

- branch
- commit
- merge
- push / pull

### branch

```mermaid
---
title: Git Branch
---
gitGraph
    commit
    commit
```

```bash
git init
```

---

### commit

```mermaid
---
title: Git Commits
---
gitGraph
    commit id: "Setup project"
    commit id: "Add a readme file"
    commit id: "Fix typo"
    commit id: "Add changes"
    commit id: "Revert changes"
```

```bash
git add .
git commit -m "commit message"
```

---

### merge

```mermaid
---
title: Merging Branches
---
    gitGraph
        commit id: "Setup project"
        branch feature/add-button
        commit
        commit
        checkout main
        merge feature/add-button
        branch feature/add-reset-button
        commit
        commit
        checkout main
        merge feature/add-reset-button
```

```bash
git checkout main
git merge feature/add-button
```

---

### push and pull

```mermaid
sequenceDiagram
    Remote->>Local: Pull
    Local-->>Local: Changes
    Local->>Remote: Push
```

```bash
git remote -v
```

```bash
git push
```

```bash
git pull
```

```mermaid
---
title: Git branches
---
    gitGraph
        commit id: "Setup project"
        branch feature/add-button
        commit
        commit
        checkout main
        merge feature/add-button
        branch feature/add-reset-button
        commit
        checkout main
        branch feature/add-login-feature
        commit
        checkout feature/add-reset-button
        checkout main
        merge feature/add-reset-button
        checkout feature/add-login-feature
        commit
        merge main
        checkout main
        merge feature/add-login-feature
```

---

## Hands on

### Setup

1. Create a github account - [github.com/signup](https://github.com/signup)
1. Install [git](https://git-scm.com/downloads/win)
1. Install [code](https://apps.microsoft.com/detail/xp9khm4bk9fz7q)
1. Install git [client](https://desktop.github.com/download/)

---

### Tracking changes

1. Commit changes
2. Push changes
3. Revert changes

---

### Collaborate

1. Create a pull request
2. Review a pull request
3. Merge a pull request
4. Pull remote changes
