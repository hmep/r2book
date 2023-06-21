#!/bin/bash

cp CNAME docs/

git commit -am "rendered docs (date +'%s')"

git push github main -f