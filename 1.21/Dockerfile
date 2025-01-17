FROM alpine:3.21

ARG PAPER_BUILD="59"
ARG PAPER_VERSION="1.21.4"
ARG PAPER_URL="https://api.papermc.io/v2/projects/paper/versions/${PAPER_VERSION}/builds/${PAPER_BUILD}/downloads/paper-${PAPER_VERSION}-${PAPER_BUILD}.jar"

ENV PAPER_JAR="paper-${PAPER_VERSION}-${PAPER_BUILD}.jar"
ENV JVM_XMS="4G"
ENV JVM_XMX="4G"
ENV JAVA_OPTS=""
ENV EULA="false"

LABEL org.opencontainers.image.base.name="docker.io/library/alpine:3.21" \
      org.opencontainers.image.description="Application packaged by grmvoid" \
      org.opencontainers.image.documentation="https://github.com/grmvoid/docker-paper/tree/master/README.md" \
      org.opencontainers.image.licenses="MIT" \
      org.opencontainers.image.ref.name="${PAPER_VERSION}-${PAPER_BUILD}" \
      org.opencontainers.image.source="https://github.com/grmvoid/docker-paper/tree/master/1.21" \
      org.opencontainers.image.title="paper" \
      org.opencontainers.image.vendor="grmvoid" \
      org.opencontainers.image.version="${PAPER_VERSION}-${PAPER_BUILD}"

RUN set -eux; \
    \
    # Install deps
      apk add --no-cache \
        bash \
        curl \
        libstdc++ \
        openjdk21-jre; \
    \
    # Create user & directory
    \
      addgroup -g 1000 paper; \
      adduser -u 1000 -G paper -s /bin/sh -D paper; \
      mkdir /paper && chown paper:paper /paper; \
      cd /paper; \
    \
    # Download Paper
    \
      curl -fsSL -o "${PAPER_JAR}" "${PAPER_URL}"; \
    \
    # Update EULA.txt
    \
      echo "eula=${EULA:-false}" > eula.txt

USER paper

WORKDIR /paper
VOLUME /paper

EXPOSE 25565/tcp
EXPOSE 25565/udp

COPY paper-* /paper
CMD [ "bash", "./paper-start.sh"]