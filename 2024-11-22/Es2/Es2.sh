#!/bin/bash

cd ~/desktop
rm -rf HeadManipulationRepo
git init HeadManipulationRepo
cd HeadManipulationRepo

touch A.txt B.txt C.txt
echo "prima riga del file A" >> A.txt
echo "prima riga del file B" >> B.txt
echo "prima riga del file C" >> C.txt
echo "--------------------"
git add A.txt
git commit -m "Upload file A"
echo "-------------------"
git add B.txt
git commit -m "Upload file B"
echo "-------------------"
git add C.txt
git commit -m "Upload file C"
echo "-----------------------"
git checkout -b devTemp
echo "Seconda riga del file B" >> B.txt
git add B.txt
git commit -m "Modifiche file B"
echo "------------------------------"
git log --oneline --graph --all
echo "-------------------------------"
git checkout main
git merge devTemp
git branch -d devTemp
echo "---------------------------"
git log --oneline --all --graph
echo "------------------------------"
git status
