FROM alpine
RUN apk add --no-cache git make bash && \
    git clone https://github.com/awslabs/git-secrets.git && \
    make install -C git-secrets
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
