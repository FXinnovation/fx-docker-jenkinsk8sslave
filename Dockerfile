FROM gcr.io/cloud-solutions-images/jenkins-k8s-slave:v2 

MAINTAINER FXinnovation <cloudsquad@fxinnovation.com>

ADD ./resources /resources

RUN /resources/build && rm -rf /resources

ENTRYPOINT ["dockerd-entrypoint"]
