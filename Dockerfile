FROM docker:1.13.1-dind

ENV JAVA_VERSION=8.121.13-r0 \
    JNLP_VERSION=2.62 \
    GCLOUDSDK_VERSION=144.0.0 \
    KUBECTL_VERSION=1.5.2 \
    BZR_VERSION=2.7.0-r0 \
    GIT_VERSION=2.11.1-r0 \
    MERCURIAL_VERSION=4.0.1-r0 \
    OPENSSH_VERSION=7.4_p1-r0 \
    SUBVERSION_VERSION=1.9.5-r0 \
    PROCPS_VERSION=3.3.12-r1 \
    BZIP2_VERSION=1.0.6-r5 \
    UNZIP_VERSION=6.0-r2 \
    XZ_VERSION=5.2.2-r1 \
    JQ_VERSION=1.5-r3 \
    BASH_VERSION=4.3.46-r5 \
    WGET_VERSION=1.18-r1 \
    PYTHON2_VERSION=2.7.13-r0 \
    IPTABLES_VERSION=1.6.0-r0 \
    E2FSPROGS_VERSION=1.43.3-r0 \
    CLOUDSDK_CORE_DISABLE_PROMPTS=1 \
    PATH=/opt/google-cloud-sdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin \
    LANG=C.UTF-8 \
    JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk

ARG BUILD_DATE
ARG VCS_REF
ARG VERSION

ADD ./resources /resources

RUN /resources/build && rm -rf /resources

VOLUME /data

WORKDIR /data

ENTRYPOINT ["dockerd-entrypoint"]

LABEL "maintainer"="cloudsquad@fxinnovation.com" \
      "org.label-schema.name"="jenkinsk8sslave" \
      "org.label-schema.base-image.name"="docker.io/library/docker" \
      "org.label-schema.base-image.version"="1.13.1-dind" \
      "org.label-schema.applications.java.version"=$JAVA_VERSION \
      "org.label-schema.applications.jnlp.version"=$JNLP_VERSION \
      "org.label-schema.applications.docker.version"=$DOCKER_VERSION \
      "org.label-schema.applications.google-cloud-sdk.version"=$GCLOUDSDK_VERSION \
      "org.label-schema.applications.kubectl.version"=$KUBECTL_VERSION \
      "org.label-schema.applications.bzr.version"=$BZR_VERSION \
      "org.label-schema.applications.git.version"=$GIT_VERSION \
      "org.label-schema.applications.mercurial.version"=$MERCURIAL_VERSION \
      "org.label-schema.applications.openssh-client.version"=$OPENSSH_VERSION \
      "org.label-schema.applications.subversion.version"=$SUBVERSION_VERSION \
      "org.label-schema.applications.procps.version"=$PROCPS_VERSION \
      "org.label-schema.applications.bzip2.version"=$BZIP2_VERSION \
      "org.label-schema.applications.unzip.version"=$UNZIP_VERSION \
      "org.label-schema.applications.xz.version"=$XZ_VERSION \
      "org.label-schema.applications.jq.version"=$JQ_VERSION \
      "org.label-schema.applications.wget.version"=$WGET_VERSION \
      "org.label-schema.applications.bash.version"=$WGET_VERSION \
      "org.label-schema.applications.python2.version"=$PYTHON2_VERSION \
      "org.label-schema.applications.iptables.version"=$IPTABLES_VERSION \
      "org.label-schema.applications.e2fsprogs.version"=$E2FSPROGS_VERSION \
      "org.label-schema.applications.curl.version"="unkown" \
      "org.label-schema.applications.ca-certificates.version"="unkown" \
      "org.label-schema.applications.openssl.version"="unkown" \
      "org.label-schema.description"="JNLP in a container for k8s" \
      "org.label-schema.url"="https://www.jenkins.io" \
      "org.label-schema.vcs-url"="https://bitbucket.org/fxadmin/public-common-docker-jenkinsk8sslave" \
      "org.label-schema.vendor"="FXinnovation" \
      "org.label-schema.schema-version"="1.0.0-rc.1" \
      "org.label-schema.vcs-ref"=$VCS_REF \
      "org.label-schema.version"=$VERSION \
      "org.label-schema.build-date"=$BUILD_DATE \
      "org.label-schema.usage"="Should only be used in a k8s environment"
