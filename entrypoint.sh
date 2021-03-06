#!/bin/sh -l

url="$1"
file_in_repo="$2"
git_name="$3"
git_email="$4"

wget "$url" -O "$file_in_repo"

git config user.name "$git_name"
git config user.email "$git_email"

git add "$file_in_repo"
git commit -m "Auto update"
git push
