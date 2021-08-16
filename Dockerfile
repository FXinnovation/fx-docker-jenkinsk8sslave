FROM docker:20.10.8-dind

ENV BASH_VERSION=5.1.0-r0 \
    BZIP2_VERSION=1.0.8-r1 \
    CURL_VERSION=7.78.0-r0 \
    E2FSPROGS_VERSION=1.45.7-r0 \
    GIT_VERSION=2.30.2-r0 \
    GROFF_VERSION=1.22.4-r1 \
    IPTABLES_VERSION=1.8.6-r0 \
    JAVA_VERSION=8.275.01-r0 \
    MERCURIAL_VERSION=5.5.2-r0 \
    JQ_VERSION=1.6-r1 \
    OPENSSH_VERSION=8.4_p1-r3 \
    PROCPS_VERSION=3.3.16-r0 \
    PY3PIP_VERSION=20.3.4-r1 \
    PYTHON3_VERSION=3.8.10-r0 \
    SUBVERSION_VERSION=1.14.1-r3 \
    UNZIP_VERSION=6.0-r9 \
    WGET_VERSION=1.21.1-r1 \
    XZ_VERSION=5.2.5-r0 \
    ZIP_VERSION=3.0-r9 \
    AWSCLI_VERSION=1.19.95 \
    GCLOUDSDK_VERSION=279.0.0 \
    JNLP_VERSION=3.40 \
    HELM_VERSION=2.17.0 \
    HELM_PLUGIN_PUSH_VERSION=0.7.1 \
    KUBECTL_VERSION=1.17.0 \
    CLOUDSDK_CORE_DISABLE_PROMPTS=1 \
    PAGE="more" \
    PATH=/opt/google-cloud-sdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin \
    LANG=C.UTF-8 \
    JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk

ARG BUILD_DATE
ARG VCS_REF
ARG VERSION

ADD ./resources /resources

RUN /resources/build && rm -rf /resources

VOLUME /data
VOLUME /var/lib/docker
VOLUME /tmp

WORKDIR /data

ENTRYPOINT ["dockerd-entrypoint"]

LABEL "maintainer"="cloudsquad@fxinnovation.com" \
      "org.label-schema.name"="jenkinsk8sslave" \
      "org.label-schema.base-image.name"="docker.io/library/docker" \
      "org.label-schema.base-image.version"="19.03.8-dind" \
      "org.label-schema.applications.java.version"=$JAVA_VERSION \
      "org.label-schema.applications.jnlp.version"=$JNLP_VERSION \
      "org.label-schema.applications.docker.version"=$DOCKER_VERSION \
      "org.label-schema.applications.google-cloud-sdk.version"=$GCLOUDSDK_VERSION \
      "org.label-schema.applications.kubectl.version"=$KUBECTL_VERSION \
      "org.label-schema.applications.bzr.version"=$BZR_VERSION \
      "org.label-schema.applications.git.version"=$GIT_VERSION \
      "org.label-schema.applications.curl.version"=$CURL_VERSION \
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
      "org.label-schema.applications.zip.version"=$ZIP_VERSION \
      "org.label-schema.applications.groff.version"=$GROFF_VERSION \
      "org.label-schema.applications.py2-pip.version"=$PYPIP_VERSION \
      "org.label-schema.applications.awscli.version"=$AWSCLI_VERSION \
      "org.label-schema.applications.helm.version"=$HELM_VERSION \
      "org.label-schema.applications.helm-push.version"=$HELM_PLUGIN_PUSH_VERSION \
      "org.label-schema.applications.curl.version"="unkown" \
      "org.label-schema.applications.ca-certificates.version"="unkown" \
      "org.label-schema.applications.openssl.version"="unkown" \
      "org.label-schema.description"="JNLP in a container for k8s" \
      "org.label-schema.url"="https://www.jenkins.io" \
      "org.label-schema.vcs-url"="https://scm.dazzlingwrench.fxinnovation.com/fxinnovation-public/docker-jenkinsk8sslave" \
      "org.label-schema.vendor"="FXinnovation" \
      "org.label-schema.schema-version"="1.0.0-rc.1" \
      "org.label-schema.vcs-ref"=$VCS_REF \
      "org.label-schema.version"=$VERSION \
      "org.label-schema.build-date"=$BUILD_DATE \
      "org.label-schema.usage"="Should only be used in a k8s environment"
