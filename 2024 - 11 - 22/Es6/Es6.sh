#!/bin/bash

cd ~/Desktop
rm -rf mergeRepo
git init mergeRepo
cd mergeRepo

for i in A B C; do
  touch "file$i.txt"
done

#Commit iniziale su main (C1)
echo "Prima modifica su fileA.txt per C1" >> "fileA.txt"
git add "fileA.txt"
git commit -m "C1: Prima modifica su fileA.txt"
echo "-----------------------------------"
git log --oneline #per ottenere un riepilogo della cronologia fino a C1
echo "-----------------------------------"

#Creazione e Commit su Feature1 (C2)
git checkout -b "Feature1"
echo "Modifica su Feature1 per C2" >> "fileB.txt"
git add "fileB.txt"
git commit -m "C2: Modifica su fileB.txt in Feature1"
echo "------------------------------------------"
git log --oneline --graph #per visualizzare la struttura del repository
echo "--------------------------------------"

#Creazione e Commit su Feature2 (C3)
git checkout main
git checkout -b "Feature2"
echo "Modifica su Feature2 per C3" >> "fileC.txt"
git add "fileC.txt"
git commit -m "C3: Modifica su fileC.txt in Feature2"
echo "--------------------------------------"
git log --oneline --decorate --graph #per verificare la struttura e i branch attivi
echo "----------------------------------------"

#Merge di Feature1 su main
git checkout main
git merge Feature1
echo "---------------------------------------"
git log --oneline --all --decorate --graph #per visualizzare la struttura dopo il merge di Feature1
echo "---------------------------------------"
git status
echo "--------------------------------------"

#Creazione di un Branch Hotfix e Commit
git checkout main
git checkout -b Hotfix
echo "Correzione per Hotfix" >> "fileC.txt"
git add "fileC.txt"
git commit -m "Hotfix: Correzione su fileC.txt"
echo "-------------------------------------------"

#Merge di Hotfix su main
git checkout main
git merge Hotfix
echo "-----------------------------------------"
git log --oneline --decorate --graph --all #per visualizzare la struttura dopo il merge di Hotfix
echo "----------------------------------------------"
git status
echo "-------------------------------------"

#Merge Finale di Feature2 su main
git checkout main
git merge Feature2
nano "fileC.txt"
git add "fileC.txt"
git commit -m "Risoluzione conflitti per Feature2"
echo "------------------------------------------"
git log --oneline --all --graph --decorate #per visualizzare la struttura finale completa del repository.
echo "--------------------------------------------"
echo "Completato script"








