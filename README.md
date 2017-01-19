# jenkins-k8s-slave
## Description
This is a dind image... I know it's bad but has some great advantages, really.
## Why use a dind image ?
This was made to run on k8s, and let's face it, I don't mind having to clean up the used images after a build, but I'm not the only guy using the jenkins and other won't clean up... Because it's easier to mount a volume this way. I don't have to do nasty stuff to it for it to mount a couple of text file. I'm don't have to manually launch a container on a host while having k8s launching containers as well. k8s should be the only one launching container on it's cluster. So I decided to change my mind and go for a dind image. This also means I don't have to install every tool on the slave image. Meaning that when some guy who doesn't know what he's doing is adding his tool on the slave container, he won't be able to brake the slave image for everybody !!! This way he'll only break his build container and limit the breaking to his job only, leaving the rest of us with a working jenkins.

Final word on this, dind is bad but it does have some nice perks.
## Usage
Usage is restricted in a k8s environment... do not use outside of it... go for an official container.
