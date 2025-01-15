#!/bin/bash

cd ~/Desktop
rm -rf branchRepo
git init branchRepo
cd branchRepo

for i in {1..5}; do
  touch "file$i.txt"
done

echo "Prima modifica per C1" >> file1.txt
git add file1.txt
git commit -m "C1: Prima modifica su file1.txt"
echo "-----------------------------------"

git checkout -b "F1"
echo "Modifica su F1 per C2" >> file2.txt
git add file2.txt
git commit -m "C2: Modifica su file2.txt in F1"
echo "--------------------------------------"

git checkout main
echo "Modifica su main per C3" >> file3.txt
git add file3.txt
git commit -m "C3: Modifica su file3.txt su main"
echo "------------------------------------------"

git checkout -b "F2"
echo "Modifica su F2 per C4" >> file1.txt
git add file1.txt
git commit -m "C4: Modifica su file1.txt in F2"
echo "-------------------------------------------"

git checkout main
echo "Modifica su main per C5" >> file2.txt
git add file2.txt
git commit -m "C5: Modifica su file2.txt su main"
echo "---------------------------------------------"

files=("file1.txt" "file2.txt" "file3.txt")
for branch in HF3 HF4 HF5; do
  git checkout -b "$branch"
  echo "------------------------"
  for i in $(seq 1 ${branch:2}); do
    index=$(( ($i-1) % ${#files[@]} ))
    file=${files[index]}
    echo "Modifica per il $i su $branch" >> "$file"
    git add "$file"
    git commit -m "Commit $i su $branch in $file"
  done
  git checkout main
done

git checkout main
echo "----------------------"
echo "REPO branchRepo CREATO"
echo "----------------------------"
git log --oneline --all --graph
