FROM docker:1.13.0-dind 

MAINTAINER fxinnovation

ENV LANG=C.UTF-8 \
    JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk \
    PATH=$PATH:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin \
    JAVA_VERSION=8u111 \
    JAVA_ALPINE_VERSION=8.111.14-r1 \
    HOME=/home/jenkins

VOLUME /home/jenkins

ADD ./resources /resources

RUN /resources/build && rm -rf /resources

WORKDIR /home/jenkins
