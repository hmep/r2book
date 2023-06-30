#!/bin/bash

case $1 in

forms)
  for i in forms/*.qmd; do quarto render $i; done
  git add forms/100respekt-*.pdf
;;

*)
  echo "No forms rendered."
;;

esac

