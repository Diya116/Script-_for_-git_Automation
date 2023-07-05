#!/bin/bash
echo Hello
echo "Enter choice 1)MAKE JS PROJECT & PUSH CODE 2) PUSH CODE
3)CLONE THE REPO"
echo choice
read choice
case $choice in 
1)
echo enter name of your project
read folder_name 
mkdir $folder_name
cd $folder_name 
touch main.js
cd ..
cp index.html style.css $folder_name
code 
cd $folder_name
git init 
git add .
echo enter commit message
read commit_message
git commit -m "$commit_message"
echo enter repo url
read repo_url
git branch -M main 
git remote add origin $repo_url
git push -u origin main
;;
2)
read -p "Enter destination: " folder
folder=$(sed -e 's/^/"/' -e 's/$/"/' <<< $folder)
cd $folder
git init 
git add .
echo enter commit message
read commit_message
git commit -m "$commit_message"
echo enter repo url
read repo_url 
git branch -M main 
git remote add origin $repo_url
git push -u origin main
;;
3)
echo enter url
read repo_url
echo give local folder name
read local_name
git clone $repo_url $local_name
;;
*)
echo "Invalid choice"
;;
esac




