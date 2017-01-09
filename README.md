# jenkins-k8s-slave
## Description
This image is based on google's image of a jenkins k8s slave. It adds docker to the image but this isn't a `dind` image.
## Usage
This should only be used on a jenkins that uses a k8s cluster to run it's slaves.
The image itself is NOT to be used as a regular `dind` (docker in docker) image. It should be used to run simbling containers by mounting the docker unix socket.

This give us some advantages:
* No Crazy Inception
* No Security Problems (dind requires to run the container in priviliged mode)
* No FS problems
* etc

The main disadvantage of using this is that you really have to do a good cleanup after launching a container. This one could still be running if you're not using the `--rm` option and you should definitively remove the images used/created during the process to avoid an image build up on your k8s hosts.
