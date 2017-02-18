FROM gcr.io/cloud-solutions-images/jenkins-k8s-slave:v2 

ARG BUILD_DATE
ARG VCS_REF
ARG VERSION

ADD ./resources /resources

RUN /resources/build && rm -rf /resources

ENTRYPOINT ["dockerd-entrypoint"]

LABEL "maintainer"="cloudsquad@fxinnovation.com" \
      "org.label-schema.name"="jenkinsk8sslave" \
      "org.label-schema.base-image.name"="gcr.io/cloud-solutions-images/jenkins-k8s-slave" \
      "org.label-schema.base-image.version"="v2" \
      "org.label-schema.applications.java.version"=$JAVA_VERSION \
      "org.label-schema.applications.jnlp.version"=$VERSION \
      "org.label-schema.applications.docker.version"="unkown" \
      "org.label-schema.applications.google-cloud-sdk.version"="unknown" \
      "org.label-schema.applications.kubectl.version"="unknown" \
      "org.label-schema.description"="JNLP in a container for k8s" \
      "org.label-schema.url"="https://www.jenkins.io" \
      "org.label-schema.vcs-url"="https://bitbucket.org/fxadmin/public-common-docker-jenkinsk8sslave" \
      "org.label-schema.vendor"="FXinnovation" \
      "org.label-schema.schema-version"="1.0.0-rc.1" \
      "org.label-schema.vcs-ref"=$VCS_REF \
      "org.label-schema.version"=$VERSION \
      "org.label-schema.build-date"=$BUILD_DATE \
      "org.label-schema.usage"="Should only be used in a k8s environment"
