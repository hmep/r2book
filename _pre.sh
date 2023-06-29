#!/bin/bash

cd forms ; for i in *.qmd; do quarto render $i ; done

git add forms/100respekt-*.pdf