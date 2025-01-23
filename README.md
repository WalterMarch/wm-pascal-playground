# Pascal

**Pascal** is a high-level language that originated as a teaching language and was meant to encourage good programming practices. It is the language I learning in college back in the early 1990s.

## File Extension

`.pas`

## Build

```bash
cd <path/to/file>
fpc <filename>.pas
```

## Execute

```bash
./<filename>
```

## configit.sh

This repository's *devcontainer.json* uses a `postCreateCommand` to run `configit.sh`.

This script uses information particular to the user of the repository.

```shell
#!/bin/bash

git config --global user.email "yourEmail@mail.com"
git config --global user.name "yourGitUserName"
git config --global push.autoSetupRemote true
git config --global push.default current
git config --global init.defaultBranch main
git config --global --add safe.directory $1
```
