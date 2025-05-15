# git init


## Why

- Track changes
- Collaborate
- Single source of truth
- Backup

## Concepts

### branch

```mermaid
---
title: Git branch
---
gitGraph
    commit
    commit
```

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

### merge

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
        commit
        checkout main
        merge feature/add-reset-button
```

### push and pull

```mermaid
sequenceDiagram
    Remote->>Local: Pull
    Local-->>Local: Changes
    Local->>Remote: Push
```

## Hands on

### Setup

1. Create a github account
    1. [github.com/signup](https://github.com/signup)
1. Install [git](https://git-scm.com/downloads/win)
1. Install [code](https://apps.microsoft.com/detail/xp9khm4bk9fz7q)
1. Install git [client](https://desktop.github.com/download/)

### Tracking changes

1. Commit changes
2. Push changes
3. Revert changes

### Collaborate

1. Create a pull request
2. Review a pull request
3. Merge a pull request
4. Pull remote changes
