# docker-git-push
This project is a simple script and Docker container for detecting changes to a
given directory and automatically commiting and pushing any changes to that directory.
This can be useful for keeping configuration files in version control automatically
for applications that like to change them.

## Build
```
docker build -t "git-push:latest" .
```

## Usage
```
docker run --name git-push -d  \
    -e GIT_REPO="ssh://git@github.com/user/repository.git" \
    -e GIT_BRANCH="master" \
    -e GIT_ORIGIN="origin" \
    -e COMMIT_USER="Git Service" \
    -e COMMIT_EMAIL="git@example.com" \
    -e WORKING_DIR="/git" \
    -e SSH_KEY="<private key>" \
    -e FILES_TO_COMMIT="." \
    -e SLEEP_INTERVAL="600" \
    -v /path/to/git/repo:/git git-push:latest
```
