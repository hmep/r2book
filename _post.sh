#!/bin/bash

cp CNAME docs/

git add docs

git commit -am "render docs $(date +'%s')"

case $1 in

publish)
  #git push origin main -f
  git push github main -f
;;

*)
  echo "No files published. Add a 'publish' argument to the post-render command in _quarto.yml to publish them."
;;

esac