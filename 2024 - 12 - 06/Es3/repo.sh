#!/bin/bash

cd $HOME/Desktop
rm -rf fileManagementRepo
git init fileManagementRepo
cd fileManagementRepo

for i in {1..3}; do
	echo "Header di file $i" >> "file$i.txt"
	git add "file$i.txt"
done
git commit -m "Creation of files"

git branch featureA
git branch featureB

git checkout featureA
echo "Nuova riga di featureA" >> file1.txt
mkdir dirA
mv file2.txt ./dirA/file2.txt
git rm file3.txt
git add -u
git add dirA
echo "-------------------------------"
git status
echo "--------------------------------"

git commit -m "Modifiche effettuate in featureA"

echo "----------------------------"
git log --oneline --all --graph
echo "----------------------------"

git checkout featureB
touch file4.txt
echo "Nuova riga di featureB" >> file1.txt
mkdir dirB
git mv file2.txt ./dirB/file2.txt
git add -u
git add file4.txt
echo "----------------------------"
git status
echo "------------------------------"
git log --oneline --all --graph
echo "-----------------------------"

git commit -m "Modifiche effettuate in featureB"

git checkout main
git merge featureA
echo "---------------------------"
git status
echo "------------------------------"
git log --oneline --all --graph
echo "-----------------------------"
git branch -d featureA
git merge featureB

nano file1.txt
git add file1.txt
git add dirA/file2.txt
git add dirB/file2.txt
git add -u
echo "--------------------------"
git status
echo "--------------------------"
git commit -m "Merge di feature B"
git branch -d featureB
echo "-----------------------------------"
git log --oneline --all --graph
echo "-----------------------------"

