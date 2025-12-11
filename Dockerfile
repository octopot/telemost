FROM scratch

LABEL author="OctoLab team <team@octolab.org>"
LABEL org.opencontainers.image.title="Telemost"
LABEL org.opencontainers.image.description="The telemost service."
LABEL org.opencontainers.image.source="https://github.com/octopot/telemost"
LABEL org.opencontainers.image.licenses="MIT"

ARG TARGETPLATFORM
COPY $TARGETPLATFORM/telemost /
COPY deploy/config.toml /
EXPOSE 3360 8080 8081 8890 8891

ENTRYPOINT ["/telemost"]
CMD ["run"]
