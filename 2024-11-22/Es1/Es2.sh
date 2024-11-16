#!/bin/bash

cd ~/desktop
rm -rf repo_esercizio
mkdir repo_esercizio
cd repo_esercizio

git init
touch README.md
echo "Sono forte!" >> README.md
git add README.md
read -p "Inserisci un nome al commit che farai " nameCommit
git commit -m "$nameCommit"
