#!/bin/bash

case $1 in

forms)
  for i in forms/*.qmd; do quarto render $i; done
  git add forms/100respekt-*.pdf
;;

*)
  echo "No forms rendered. Add a 'forms' argument to the pre-render command in _quarto.yml to render them."
;;

esac

