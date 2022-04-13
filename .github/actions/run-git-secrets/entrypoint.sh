#!/bin/sh -l
git config --global --add safe.directory '/github/workspace' && \
git-secrets --register-aws --global && \
git-secrets --add --global '([^0-9])*[0-9]{12}([^0-9])*'
git-secrets --add --global --allowed '1234'
git-secrets --scan
