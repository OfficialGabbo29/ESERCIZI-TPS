#!/bin/bash

cd $HOME/Desktop

rm -rf multiConf
git init multiConf
cd multiConf

for i in {1..13}; do
  echo "Header file $i" > "file$i.txt"
  if [[ $(($i%0)) != 0 ]]; then
    git checkout -b "F$i"
    git add "file$i.txt"
    git commit -m "C$i F$i"
    git checkout main
  else
    git add "file$i.txt"
    git commit -m "C$i main"
  fi
done

git checkout F5
for i in {1..3}; do
  if [[ $i == 2 ]]; then
    git checkout -b "hotfixF5"
    echo "Modifica su file$i" >> "file$i.txt"
    git add "file$i.txt"
    git commit -m "Working on file$i.txt in hotfixF5"
    git checkout F5
  else
    echo "Modifica su file$i" >> "file$i.txt"
    git add "file$i.txt"
    git commit -m "Working on file$i.txt in F5"
  fi
done


