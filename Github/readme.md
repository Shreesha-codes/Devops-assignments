# Git Homework Tasks

## Task 1: `git commit -a -m` vs `git commit -m`

**What I understood:**
- `git commit -m "message"`: This command only commits files that have been explicitly staged using `git add`. If I change a file but don't `git add` it first, this command will ignore it.
- `git commit -a -m "message"`: The `-a` flag tells Git to automatically stage all modified and deleted files that Git is already tracking, and then commit them. It skips the `git add` step for files already in the repository (but it won't include completely new, untracked files).

**My Test & Observation:**
```bash
$ echo "update" >> existing_file.txt
$ echo "new" > untracked_file.txt

$ git commit -m 'Standard commit'
On branch main
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
	modified:   existing_file.txt

Untracked files:
  (use "git add <file>..." to include in what will be committed)
	untracked_file.txt

no changes added to commit (use "git add" and/or "git commit -a")

$ git commit -a -m 'Commit with -a flag'
[main f54f74f] Commit with -a flag
 1 file changed, 1 insertion(+)
```
*The untracked file was ignored, but the modified one was committed automatically!*

## Task 2: Git Cherry-Pick

For this task, I practiced moving a specific commit from a feature branch over to the main branch using `git cherry-pick`. 

**1. Creating commits in the main branch:**
```bash
$ touch file1.txt && git add file1.txt && git commit -m 'Initial commit'
[main 7bae981] Initial commit
 1 file changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 file1.txt

$ touch file2.txt && git add file2.txt && git commit -m 'Add file2'
[main d59c4fa] Add file2
 1 file changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 file2.txt

$ git log --oneline
d59c4fa Add file2
7bae981 Initial commit
f54f74f Commit with -a flag
a0c9e3e base commit
```

**2. Creating a new branch and making commits:**
```bash
$ git checkout -b feature-branch
Switched to a new branch 'feature-branch'

$ echo 'feature A' > feature.txt && git add feature.txt && git commit -m 'Feature A'
[feature-branch 6dcae4c] Feature A
 1 file changed, 1 insertion(+)
 create mode 100644 feature.txt

$ echo 'feature B' >> feature.txt && git commit -a -m 'Feature B'
[feature-branch 76c131a] Feature B
 1 file changed, 1 insertion(+)
```

**3. Identifying the commit to cherry-pick:**
```bash
$ git log --oneline
76c131a Feature B
6dcae4c Feature A
d59c4fa Add file2
7bae981 Initial commit
f54f74f Commit with -a flag
a0c9e3e base commit
```
*I decided to cherry-pick the "Feature B" commit (Hash: `76c131a`).*

**4. Cherry-picking into main:**
```bash
$ git checkout main
Switched to branch 'main'

$ git cherry-pick 76c131a
[main e4a2d59] Feature B
 Date: Wed Sep 2 22:38:00 2026 +0530
 1 file changed, 1 insertion(+)
 create mode 100644 feature.txt
```

**5. Verifying the change in main:**
```bash
$ git log --oneline
e4a2d59 Feature B
d59c4fa Add file2
7bae981 Initial commit
f54f74f Commit with -a flag
a0c9e3e base commit

$ cat feature.txt
feature B
```
*The specific change from the feature branch was successfully applied directly to my main branch!*
