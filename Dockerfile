FROM wellsky/infra-tools:1.2.0

RUN ["/bin/sh", "-c", "apk add --update --no-cache bash ca-certificates curl git jq openssh unzip"]

RUN ["/bin/sh", "-c", "mkdir -p /src && mkdir -p /usr/local/bin"]

COPY ["src", "/src/"]

ENTRYPOINT ["/src/main.sh"]
