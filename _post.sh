#!/bin/bash

cp CNAME docs/

git add docs

git commit -am "render docs $(date +'%s')"

git push origin main -f

git push github main -f