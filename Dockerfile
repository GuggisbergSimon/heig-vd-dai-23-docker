FROM alpine:3.18
ARG FILEBROWSER_VERSION=2.25.0-r0
RUN apk add --no-cache --repository=https://dl-cdn.alpinelinux.org/alpine/edge/testing "filebrowser=$FILEBROWSER_VERSION"
RUN apk add --no-cache curl
WORKDIR /app
VOLUME /app/config
VOLUME /app/data
EXPOSE 5000
HEALTHCHECK --start-period=2s --interval=5s --timeout=3s CMD curl -f http://localhost:5000/health || exit 1
ENTRYPOINT ["/usr/bin/filebrowser"]
CMD ["--address", "0.0.0.0", "--port", "5000", "--database", "/app/config/database.db", "--root", "/app/data"]
