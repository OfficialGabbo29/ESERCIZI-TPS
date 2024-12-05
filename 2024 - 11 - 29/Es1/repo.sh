#!/bin/bash

cd $HOME/Desktop
rm -rf multiConf
git init multiConf
cd multiConf

git checkout -b main
for i in {1..13}; do
	if [[ $(($i%2)) != 0 ]]; then
		git checkout -b "F$i"
		echo "Header file $i" >> "file$i.txt"
		git add "file$i.txt"
		git commit -m "C$i main"
		git checkout main
	else
		echo "Header file $i" >> "file$i.txt"
		git add "file$i.txt"
		git commit -m "C$i main"
	fi
done

echo "------------------------------------"
git log --oneline --all --graph
