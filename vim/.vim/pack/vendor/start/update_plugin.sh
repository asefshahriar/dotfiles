#!/usr/bin/env zsh

if [[ -z "$1" ]] then
  DIR=/home/asefshahriar/dotfiles/vim/.vim/pack/vendor/start/
else
  DIR="$1"
fi

CURRENT_DIR=`pwd`

for repo in "${DIR}/"*; do
  if [[ -d "${repo}/.git" ]] then
    cd "${repo}"
    echo -e "\033[1mFound git repository in $repo.\033[0m"
    echo -e "\033[1mFetching upstream changes for $repo.\033[0m"
    git pull origin master;
  fi
done

cd "${CURRENT_DIR}"
