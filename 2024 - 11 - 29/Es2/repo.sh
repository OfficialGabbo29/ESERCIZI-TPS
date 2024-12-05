#!/bin/bash

cd $HOME/Desktop
rm -rf smc
git init smc
cd smc

for i in {1..10}; do
	echo "Intestazione file $i" >> "file$i.txt"
	git add "file$i.txt"
done
git commit -m "add file"

echo "-----------------------------"
git status
echo "-----------------------------"
git log --oneline --graph --all
echo "------------------------------"

for i in {1..10}; do
	echo "frase1" >> "file$i.txt"
	echo "frase2" >> "file$i.txt"
	echo "frase3" >> "file$i.txt"
	if [[ $(($i%2)) != 0 ]]; then
		git add "file$i.txt"
	fi
done
git commit -m "Added mods on odd files"
echo "----------------------------------"
git status
echo "------------------------------------"
git log --oneline --graph --all
echo "-----------------------------------"

git rm --cached file6.txt file8.txt

echo "-------------------------------------"
git status
echo "-----------------------------------"
git add -u
git commit -m "file modificati"
echo "------------------------------"
git status
echo "--------------------------------"
git log --oneline --all --graph
echo "----------------------------------"

mkdir Saves
mv file2.txt ./Saves/file2.txt
mv file4.txt ./Saves/file4.txt
mv file10.txt ./Saves/file10.txt
git status
git add -u
git add Saves
echo "---------------------------------"
git status
echo "----------------------------"
git commit -m "Moved some files in Saves"
echo "------------------------"
git status
echo "-----------------------"
git checkout -b FS
echo "Intestazione file FS" >> fileFS.md
git add file6.txt fileFS.md
echo "nuva riga" >> file1.txt
echo "nuova riga" >> file3.txt
git add file1.txt file3.txt
git commit -m "Work on FS"

echo "---------------------------------"
git log --oneline --graph --all
echo "-----------------------"
git checkout main
git branch HF
git checkout -b FN
rm file8.txt
git rm file9.txt
echo "Nuova riga" >> file1.txt
echo "Nuova riga" >> file3.txt
echo "--------------------------------"
git status
echo "------------------------------"
git add -u
git commit -m "Removed some things"
echo "-------------------"
git log --oneline --all --graph
echo "---------------------------"
git checkout main
git merge FS
echo "------------------------"
git log --oneline --all --graph
echo "------------------------"
git branch -d FS
git merge FN
nano file1.txt
nano file3.txt
git add file1.txt file3.txt
git commit -m "Merge FN"
git branch -d FN
echo "---------------------------"
git log --oneline --all --graph
echo "------------------------------"
