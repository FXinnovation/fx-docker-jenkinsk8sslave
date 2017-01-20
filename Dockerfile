FROM gcr.io/cloud-solutions-images/jenkins-k8s-slave:v2 

MAINTAINER fxinnovation

ADD ./resources /resources

RUN /resources/build && rm -rf /resources

ENTRYPOINT ["dockerd-entrypoint"]
