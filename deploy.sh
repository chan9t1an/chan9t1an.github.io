#!/bin/bash

export GIT_SSH_COMMAND='ssh -i ~/.ssh/id_rsa_chan9t1an'

cp -r chan9t1an/* docs/
rm -rf chan9t1an/*

git config user.name chan9t1an
git config user.email chan9t1an@outlook.com

git add --ignore-removal .
commitMsg="docs: $(date +%Y%m%d_%H%M%S)"
git commit -m "${commitMsg}"
git push -u origin master
