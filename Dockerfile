FROM alpine

COPY LICENSE README.md /
COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
