FROM ghcr.io/dkoch84/controller-layer AS base

FROM openjdk:18.0.2.1-slim-buster

RUN apt update && \
    apt upgrade && \
    apt -y install curl

RUN curl -o actions-runner-linux-arm64-2.287.1.tar.gz -L \
    https://github.com/actions/runner/releases/download/v2.287.1/actions-runner-linux-arm64-2.287.1.tar.gz && \
    tar xzf ./actions-runner-linux-arm64-2.287.1.tar.gz && \
    rm ./actions-runner-linux-arm64-2.287.1.tar.gz

COPY --from=base --chmod=0755 entrypoint.sh /usr/bin/

CMD ["entrypoint.sh"]