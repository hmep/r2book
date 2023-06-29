#!/bin/bash

for i in forms/*.qmd; do quarto render $i; done

git add forms/100respekt-*.pdf