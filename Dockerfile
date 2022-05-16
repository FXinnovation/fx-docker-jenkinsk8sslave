FROM docker:20.10-dind

ENV KUBECTL_VERSION=1.22.0 \
    GCLOUDSDK_VERSION=385.0.0 \
    JNLP_VERSION=4.9 \
    HELM_VERSION=2.17.0 \
    HELM_PLUGIN_PUSH_VERSION=0.10.2 \
    CLOUDSDK_CORE_DISABLE_PROMPTS=1 \
    PAGE="more" \
    PATH=/opt/google-cloud-sdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin \
    LANG=C.UTF-8

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
      "org.label-schema.base-image.version"="20.10-dind" \
      "org.label-schema.description"="JNLP in a container for k8s" \
      "org.label-schema.url"="https://www.jenkins.io" \
      "org.label-schema.vcs-url"="https://github.com/FXinnovation/fx-docker-jenkinsk8sslave" \
      "org.label-schema.vendor"="FXinnovation" \
      "org.label-schema.schema-version"="1.0.0-rc.1" \
      "org.label-schema.vcs-ref"=$VCS_REF \
      "org.label-schema.version"=$VERSION \
      "org.label-schema.build-date"=$BUILD_DATE \
      "org.label-schema.usage"="Should only be used in a k8s environment"
