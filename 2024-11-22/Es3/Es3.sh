#!/bin/bash

cd ~/desktop
rm -rf MergeRepo
git init MergeRepo
cd MergeRepo

echo "------------------"
for i in {1..3}; do
  touch "file$i.txt"
  echo "Prima riga del file $i" >> "file$i.txt"
  git add "file$i.txt"
  git commit -m "add file $i"
  echo "-------------------"
done

git branch featureA
git branch featureB
echo "------------------"

for i in A B; do
  git checkout "feature$i"
  echo "ramo feature$i" >> "file2.txt"
  git add *
  git commit -m "Modifica file 2"
  echo "-------------------"
done

echo "--------------"
git status
echo "-------------"
git log --oneline --graph --all
echo "--------------"

git checkout main
git merge featureA
git branch -d featureA
echo "---------------"
git status 
echo "---------------"
git log --oneline --graph --all
echo "----------------"

git merge featureB

echo "---------------"
git status
nano file2.txt
echo "---------------"
git add *
git commit -m "resolution confit of the merge featureB"
git branch -d featureB
echo "-------------------"
git status
echo "-------------------"
git log --oneline --graph --all
echo "-------------------------"
