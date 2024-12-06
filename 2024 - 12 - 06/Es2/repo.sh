#!/bin/bash

cd $HOME/Desktop
rm -rf mergeRepo
git init mergeRepo
cd mergeRepo

for i in A B C; do
	echo "Header riga del file $i" >> "file$i.txt"
	git add "file$i.txt"
done
git commit -m "Creation of new file"

for i in {1..2}; do
	git branch "feature$i"
done

git checkout feature1
echo "Riga di feature1" >> fileA.txt
echo "Riga di feature1" >> fileB.txt
git add -u
git commit -m "Modifiche di file A e B in feature1"

git checkout feature2
echo "Riga di feature2" >> fileA.txt
echo "Riga di feature2" >> fileB.txt
git add -u
git commit -m "Modifiche di file A e B in feature2"

echo "------------------------------------"
git log --oneline --all --graph
echo "----------------------------------"

git checkout main
git merge feature1
git branch -d feature1

echo "------------------------------------"
git log --oneline --all --graph
echo "----------------------------------"


git merge feature2
nano fileA.txt
nano fileB.txt
git add -u
git commit -m "Merge di feature2"
git branch -d feature2

echo "--------------------------------"
git log --oneline --all --graph
