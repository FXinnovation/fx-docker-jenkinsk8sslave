FROM gcr.io/cloud-solutions-images/jenkins-k8s-slave:v2

MAINTAINER fxinnovation

ENV PACKER_VERSION=0.11.0 \
    TERRAFORM_VERSION=0.8.4 \
    DOCKER_VERSION=1.11.2-0~jessie

ADD ./resources /resources

RUN /resources/build && rm -rf /resources
