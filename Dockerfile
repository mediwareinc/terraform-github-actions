FROM wellsky/infra-tools:1.2.0

RUN ["/bin/sh", "-c", "apk add --update --no-cache bash ca-certificates curl git jq openssh"]

RUN ["/bin/sh", "-c", "mkdir -p /src"]

COPY ["src", "/src/"]

ENTRYPOINT ["/src/main.sh"]
