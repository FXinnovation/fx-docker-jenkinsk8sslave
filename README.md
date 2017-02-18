# jenkinsk8sslave
[![](https://images.microbadger.com/badges/version/fxinnovation/jenkinsk8sslave.svg)](https://microbadger.com/images/fxinnovation/jenkinsk8sslave "Get your own version badge on microbadger.com") [![](https://images.microbadger.com/badges/image/fxinnovation/jenkinsk8sslave.svg)](https://microbadger.com/images/fxinnovation/jenkinsk8sslave "Get your own image badge on microbadger.com")
## Description
This is a dind image... I know it's bad but has some great advantages, really.

## Tags
Be adviced that since we really don't like docker's latest tag on application containers, we won't publish a latest tag.

We do not follow the jnlp release tags in the docker image tags. You can always find the jnlp version in the Dockerfile that was used to create the image or you can use the labels.

## Why use a dind image ?
This was made to run on k8s, and let's face it, I don't mind having to clean up the used images after a build, but I'm not the only guy using the jenkins and other won't clean up... Because it's easier to mount a volume this way. I don't have to do nasty stuff to it for it to mount a couple of text file. I'm don't have to manually launch a container on a host while having k8s launching containers as well. k8s should be the only one launching container on it's cluster. So I decided to change my mind and go for a dind image. This also means I don't have to install every tool on the slave image. Meaning that when some guy who doesn't know what he's doing is adding his tool on the slave container, he won't be able to brake the slave image for everybody !!! This way he'll only break his build container and limit the breaking to his job only, leaving the rest of us with a working jenkins.

Final word on this, dind is bad but it does have some nice perks.

## Usage
Usage is restricted in a k8s environment... do not use outside of it... go for an official container.


If you are in a k8s environment, just google "jenkins+kubernetes", you'll have plenty of examples. If we don't exactly explain how to use it here, it's because we have our own deployment procedures of jenkins, this procedure is detailed on our internal wiki, but it does contains some sensible information and there is a lot of documentation for this setup on line (even form google itself)

## Labels
We set labels on our images with additional information on the image. we follow the guidelines defined at http://label-schema.org/. Visit their website for more information about those labels.

## Comments and Issues
If you have comments or detect an issue, please be adviced we don't check the docker hub comments. You can always contact us through the repository.
