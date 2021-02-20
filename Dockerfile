FROM alpine:3.13.2
LABEL website="Secure Docker Images https://secureimages.dev"
LABEL description="We secure your business from scratch."
LABEL maintainer="support@secureimages.dev"

ARG LOGSTASH_VERSION=7.11.1
ARG TARBALL_ASC="https://artifacts.elastic.co/downloads/logstash/logstash-${LOGSTASH_VERSION}-linux-x86_64.tar.gz.asc"
### https://artifacts.elastic.co/downloads/logstash/logstash-7.11.1-linux-x86_64.tar.gz.sha512
ARG TARBALL_SHA="d1e9b59d1fcb6f794d9b230b659a886e5e300a282f326678e96435bc2a12a06bb0c22ac756b2fdfd65f2f46e6d211e8bdc7ca724b5baf7cb86a7a2a270d1ec89"
ARG GPG_KEY="46095ACC8548582C1A2699A9D27D666CD88E42B4"

ENV PATH=/usr/share/logstash/bin:/sbin:$PATH \
    LS_SETTINGS_DIR=/usr/share/logstash/config \
    LANG='en_US.UTF-8' \
    LC_ALL='en_US.UTF-8'

RUN apk add --no-cache openjdk8-jre su-exec libzmq bash libc6-compat &&\
    apk add --no-cache -t .build-deps ca-certificates gnupg openssl &&\
    set -ex &&\
    wget -O /tmp/logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-${LOGSTASH_VERSION}-linux-x86_64.tar.gz &&\
    if [ "$TARBALL_SHA" ]; then \
      echo "$TARBALL_SHA  /tmp/logstash.tar.gz" | sha512sum -c - ;\
    fi &&\
    if [ "$TARBALL_ASC" ]; then \
      wget -O /tmp/logstash.tar.gz.asc "$TARBALL_ASC" &&\
      export GNUPGHOME="$(mktemp -d)" &&\
      ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" \
      || gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" \
      || gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY" ) &&\
      gpg --batch --verify /tmp/logstash.tar.gz.asc /tmp/logstash.tar.gz &&\
      rm -rf "$GNUPGHOME" || true ;\
    fi &&\
    tar -xzf /tmp/logstash.tar.gz -C /tmp/ &&\
    mv /tmp/logstash-$LOGSTASH_VERSION /usr/share/logstash &&\
    adduser -DH -s /sbin/nologin logstash &&\
    chown -R logstash:logstash /usr/share/logstash &&\
    apk del --purge .build-deps &&\
    rm -rf /tmp/* /var/cache/apk/*

ADD data/ /

RUN chmod +x /*.sh

EXPOSE 5044 9600

ENTRYPOINT ["/logstash-entrypoint.sh"]

CMD ["-e", ""]
