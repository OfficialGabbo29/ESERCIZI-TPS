#!/bin/bash

cd $HOME/Desktop
rm -rf branchRepoLog
git init branchRepoLog
cd branchRepoLog

count=1
for i in {1..4}; do
	touch "file$count.txt"
	git add "file$count.txt"
	count=$((count + 1))
	touch "file$count.txt"
	git add "file$count.txt"
	git commit -m "main_C$i"

	git checkout -b "BF$i"
	for j in $(seq 1 $i); do
		touch "BF${i}_file$j.txt"
		git add "BF${i}_file$j.txt"
		git commit -m "BF${i}_C$j"
	done
	git checkout main
done

echo "--------------------------------------"
git log --oneline --all --graph
echo "----------------------------------------"
git status
echo "--------------------------------------"

git checkout main
touch lastFile.txt
git add lastFile.txt
git commit -m EndCommit

echo "-----------------------------"
git log --oneline --all --graph
echo "------------------------------"

echo "Repo setup DONE!"
