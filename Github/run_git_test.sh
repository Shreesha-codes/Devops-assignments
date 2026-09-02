#!/bin/bash
mkdir -p temp-repo
cd temp-repo
git init
git config user.email "basaravanishreesha@gmail.com"
git config user.name "shreesha-codes"

echo "base" > existing_file.txt
git add existing_file.txt
git commit -m "base commit" > /dev/null

echo "=== TASK 1 ==="
echo "update" >> existing_file.txt
echo "new" > untracked_file.txt

echo "\$ git commit -m 'Standard commit'"
git commit -m "Standard commit" 2>&1

echo "\$ git commit -a -m 'Commit with -a flag'"
git commit -a -m "Commit with -a flag" 2>&1

echo "=== TASK 2 ==="
# Already on master/main. Let's make sure it's called main
git branch -M main
echo "\$ touch file1.txt && git add file1.txt && git commit -m 'Initial commit'"
touch file1.txt && git add file1.txt && git commit -m "Initial commit" 2>&1
echo "\$ touch file2.txt && git add file2.txt && git commit -m 'Add file2'"
touch file2.txt && git add file2.txt && git commit -m "Add file2" 2>&1

echo "\$ git log --oneline"
git log --oneline 2>&1

echo "\$ git checkout -b feature-branch"
git checkout -b feature-branch 2>&1

echo "\$ echo 'feature A' > feature.txt && git add feature.txt && git commit -m 'Feature A'"
echo "feature A" > feature.txt && git add feature.txt && git commit -m "Feature A" 2>&1

echo "\$ echo 'feature B' >> feature.txt && git commit -a -m 'Feature B'"
echo "feature B" >> feature.txt && git commit -a -m "Feature B" 2>&1

echo "\$ git log --oneline"
git log --oneline 2>&1

HASH=$(git log --oneline | grep "Feature B" | awk '{print $1}')

echo "\$ git checkout main"
git checkout main 2>&1

echo "\$ git cherry-pick $HASH"
git cherry-pick $HASH 2>&1

echo "\$ git log --oneline"
git log --oneline 2>&1

echo "\$ cat feature.txt"
cat feature.txt 2>&1

cd ..
rm -rf temp-repo
