FROM alpine:3

RUN ["/bin/sh", "-c", "apk add --update --no-cache bash ca-certificates curl git jq openssh"]

RUN ["/bin/sh", "-c", "mkdir -p /src"]

COPY ["src", "/src/"]

COPY --from=wellsky/infra-tools:1.2.0 /var/lib/terraform_plugins/terraform-provider-azuredevops_v0.0.1_x4 /usr/local/bin/terraform-provider-azuredevops_v0.0.1_x4

ENTRYPOINT ["/src/main.sh"]
