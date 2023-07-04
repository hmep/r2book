#!/bin/bash

case $1 in

forms)
  for i in forms/100respekt*.qmd; do quarto render $i; done
;;

*)
  echo "No forms rendered. Add a 'forms' argument to the pre-render command in _quarto.yml to render them."
;;

esac

