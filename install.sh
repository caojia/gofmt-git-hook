#!/usr/bin/env bash

go get golang.org/x/tools/cmd/goimports
mkdir -p ~/bin
curl -s https://raw.githubusercontent.com/caojia/gofmt-git-hook/master/fmt-check -o ~/bin/go-fmt-check
curl -s https://raw.githubusercontent.com/caojia/gofmt-git-hook/master/fmt-fix -o ~/bin/go-fmt-fix
chmod +x ~/bin/go-fmt-check 
chmod +x ~/bin/go-fmt-fix
echo ~/bin/go-fmt-check > .git/hooks/pre-commit
chmod +x .git/hooks/pre-commit
