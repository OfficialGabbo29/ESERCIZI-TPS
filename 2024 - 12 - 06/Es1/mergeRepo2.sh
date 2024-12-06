#!/bin/bash

cd $HOME/Desktop
clear
#1) crea il repo mergeRepo
rm -rf mergeRepo
git init mergeRepo
cd mergeRepo

#2) crea 3 file più commit
# alt+6 = copia

for i in {1..3}; do
  echo "initial content file$i" > "file$i.txt"
  git add "file$i.txt"
done

git commit -m "Initial commit"

echo "--------------------------------"
git log --oneline
echo "---------------------------------"
for i in {1..2}; do
  git branch "F$i"
done

echo "----------------------------------"
git log --oneline --graph --all
echo "----------------------------------"
# punto 3b

git checkout F1
for i in {1..2}; do
  echo "data in file$i branch F1" >> "file$i.txt"
  git add "file$i.txt"
done

git commit -m "Commit su F1"

echo "-------------------------------------------"
git log --all --graph --oneline
echo "--------------------------------------------"

git checkout F2
for i in {1..2}; do
  echo "data in file$i branch F2" >> "file$i.txt"
  git add "file$i.txt"
done

git commit -m "Commit su F2"

echo "-------------------------------------------"
git log --all --graph --oneline
echo "--------------------------------------------"

git checkout main
git merge F1
echo "----------------------------------"
git log --oneline --all --graph
echo "---------------------------------"

git branch -d F1
git merge F2
echo "-----------------------------------------"
git status
echo "----------------------------------------"
nano file1.txt
nano file2.txt
git add file1.txt
git add file2.txt
git commit -m "Merge con F2"
echo "--------------------------------------"
git log --oneline --graph --all
echo "------------------------------------"
