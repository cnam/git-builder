#!/bin/sh

if [ -d ".git" ]; then
    git pull
else
    git clone -b $REPO_REF https://$GITLAB_LOGIN:$GITLAB_PASSWORD@$REPO_URL .
fi

