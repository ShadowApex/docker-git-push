FROM alpine:latest
MAINTAINER  William Edwards <shadowapex@gmail.com>

ENV GIT_REPO=""
ENV GIT_BRANCH="master"
ENV GIT_ORIGIN="origin"
ENV COMMIT_USER="Git Service"
ENV COMMIT_EMAIL="git@example.com"
ENV WORKING_DIR=""
ENV SSH_KEY=""
ENV FILES_TO_COMMIT="."
ENV SLEEP_INTERVAL="600"

RUN apk --no-cache add git

ENTRYPOINT ["/entrypoint.sh"]
