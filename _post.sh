#!/bin/bash

cp CNAME docs/

git commit -am "rendered docs $(date +'%s')"

git push origin main -f

git push github main -f

echo "All done"