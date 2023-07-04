#!/bin/bash

cp CNAME docs/
git add docs
git commit -am "render docs $(date +'%s')"

case $1 in

stage)
  rsync -avz docs staging:
;;

publish)
  git push origin main -f
  git push github main -f
;;

*)
  echo "No files deployed. Add a 'stage' or publish' argument to the post-render command in _quarto.yml to push them."
;;

esac