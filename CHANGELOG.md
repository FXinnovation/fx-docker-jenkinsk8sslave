3.19.0 / 2021-08-16
===================

  * chore: pins docker base image to version 20.10.8-dind
  * chore: pins curl version to 7.78.0-r0
  * chore: pins unzip version to 6.0-r9
  * fix: build failure and helm source

3.18.0 / 2021-06-16
===================

  * feat: Update docker to 20.10.7
  * feat: Update jenkins dependencies

3.17.0 / 2020-04-24
===================

  * feat: Update docker to 19.03.8
  * feat: Update jenkins dependencies
  * tech: add pre-commit configuration

3.16.0 / 2020-02-08
===================

  * feat: Add `/tmp` as a volume
  * tech: Update some packages

3.15.0 / 2020-02-07
===================

  * feat: /var/lib/docker as a volume, pin packages

4.0.0-rc1 / 2020-01-13
======================

  * maintenance: update dependencies
  * breaking: Update additionnal packages
  * feature: Pin JNLP agent to 3.40
  * feature: Pin latest versions for dependencies
  * maintenance: Add docs about authors and changelog
  * maintenance: Add changelog file
  * maintenance: Add authors file

3.14.0 / 2019-07-23
===================

  * Pin dependencies
  * Remove storage driver, might improve performances
  * Pin version of docker image to 19.03.0-dind

3.13.1 / 2019-05-01
===================

  * Merge branch 'hotfix/mtu' of fxinnovation-public/docker-jenkinsk8sslave into master
  * Set MTU to a lower value

3.13.0 / 2019-04-23
===================

  * Merge branch 'maintenance/openssh_client' of fxinnovation-public/docker-jenkinsk8sslave into master
  * Pin openssh_client openssh-client-7.9_p1-r5

3.12.0 / 2019-04-23
===================

  * Merge branch 'hotfix/hardening' of fxinnovation-public/docker-jenkinsk8sslave into master
  * Fix hardening
  * Add fixes for CIS hardening

3.11.0 / 2019-04-22
===================

  * Merge branch 'maintenance/version_pin' of fxinnovation-public/docker-jenkinsk8sslave into master
  * Pinning newer version of openjdk and wget

3.10.0 / 2019-03-06
===================

  * Merge branch 'hotfix/addLatest' of fxinnovation-public/docker-jenkinsk8sslave into master
  * Added Laterst to jenkinsfile

3.9.0 / 2019-03-05
==================

  * Merge branch 'feature/pipeline' of fxinnovation-public/docker-jenkinsk8sslave into master
  * Ping new version of openssh, add helm push plugin
  *  another ifx
  * Fix helm install
  * Added helm to docker image
  * Update metadata
  * Bump jnlp version as well
  * Making script a bit more fail safe
  * Bumping non apk packages as well
  * Bumping version for new alpine versions
  * Bumping version of base image and packages
  * Added new pipeline

3.8.0 / 2018-07-31
==================

  * Merged in bumpJnlp (pull request #17)
  * Bump additionnal packages
  * Changing jnlp version
  * Merged in add_tests (pull request #16)
  * Trying to launch docker
  * Merged in add_tests (pull request #15)
  * Removed debug messages
  * Bumping mercurial to 4.3.1-r0
  * Added debug
  * Removing debug messages
  * Changed docker daemon into dockerd in entrypoint
  * Merged in add_tests (pull request #14)
  * Adding test for docker

3.7.0 / 2017-08-14
==================

  * Merged in bumpversions (pull request #13)
  * Added a docker inspect command
  * Merged in bumpversions (pull request #12)
  * Trying to make the live testing work
  * Merged in bumpversions (pull request #11)
  * Fixing testing the new image
  * Correcting fetching branch name
  * Added some debug
  * Printed out some usefull info
  * Bumping so;e other versions
  * Bumping gcloud and kubectl
  * Qucifix in Jenkinsfile
  * Added curl to image
  * Bumping some versions
  * Bumping git and subversion
  * Bumping docker to 17-06-0
  * Fixed typo
  * Removed aha since it is never used
  * Added test for aws
  * Added test for testing the slave

3.6.0 / 2017-06-12
==================

  * Merged in add_kops (pull request #10)
  * Added kops to image

3.5.0 / 2017-06-07
==================

  * Merged in add_aws_cli (pull request #9)
  * Bump gcloud sdk to 157.0.0
  * Bump git to 2.11.2
  * Add awscli, pip and groff

3.4.0 / 2017-04-29
==================

  * Merged in bumpver (pull request #8)
  * Set wget to 1.18-r2
  * Merged in betterHipChatNotification (pull request #7)
  * Fixed typo in message
  * Adapted readme for latest tag
  * Making hipchat notification better
  * Trying hipchat notifications
  * Fixing error on hip chat notification plugin
  * Removed comments to see if aha works well

3.3.3 / 2017-03-07
==================

  * Merged in betterHipChatNotification (pull request #6)
  * Putting comment back
  * Removed comment for hipchat message
  * Merged in betterHipChatNotification (pull request #5)
  * Temporaraly removed html notification
  * Add alpine specific build
  * Had 2 typo fixed the other now
  * Fixed typo
  * Added color this time
  * Trying to improve hipchat notifications

3.3.2 / 2017-03-07
==================

  * Merged in addAnsiToHtml (pull request #4)
  * Fixed typo

3.3.0 / 2017-03-07
==================

  * Merged in addAnsiToHtml (pull request #3)
  * Added aha to the slave

3.2.0 / 2017-03-06
==================

  * Merged in addzipandunzip (pull request #1)
  * Removed a duplicate unzip package.
  * Added zip and unzip as common tools to have

3.1.4 / 2017-03-06
==================

  * Merged in bumpvergcsdk (pull request #2)
  * Bump google cloud sdk to 146.0.0

3.1.3 / 2017-02-21
==================

  * Corrected installation of gcloud

3.1.2 / 2017-02-21
==================

  * Fixed gcloud sdk tool, forgot to install it...

3.1.1 / 2017-02-21
==================

  * Bump jnlp version to 2.62 and fixed typo in build script

3.1.0 / 2017-02-21
==================

  * Added jnlp slave launcher
  * Added some dependencies
  * Added some new dependencies

3.0.1 / 2017-02-21
==================

  * Added custome build script for docker hub

3.0.0 / 2017-02-21
==================

  * Fixed small typo in variable
  * Fixed typo in dockerfile
  * Added version for gcloudsdk and fixed download of gcloud
  * Removed jenkins user creation since it is not used
  * Migrated to an alpine image
  * Added notify Step
  * Removed file used for testing
  * Testing webhook

2.1.0 / 2017-02-18
==================

  * Added some label and set one to unkown :(
  * Added JEnkinsfile
  * Changed README.md
  * Changed dockerfile using args and labels
  * Removed jenkinsfile for now
  * Added mail address of maintainer

2.0.0 / 2017-01-20
==================

  * Trying the other way around

1.2.3 / 2017-01-20
==================

  * Trying to make this work.

1.2.2 / 2017-01-20
==================

  * Added some information on the readme
  * Removed cleaning stap since it is not used anymore

1.2.1 / 2017-01-19
==================

  * Corrected instalation of gcloud utilities

1.2.0 / 2017-01-19
==================

  * Adding gcloud utility since it's needed to push

1.1.0 / 2017-01-19
==================

  * Added git as a package in the container

1.0.2 / 2017-01-19
==================

  * Changed readme

1.0.1 / 2017-01-19
==================

  * Hotfix on java

1.0.0 / 2017-01-19
==================

  * Made jenkins image with dind

0.2.0 / 2017-01-12
==================

  * Added terraform and packer to jenkins slave image

0.1.1 / 2017-01-10
==================

  * Corrected README
  * Added comments on build script
  * Add some explanation in readme

0.1.0 / 2016-12-28
==================

  * Added jenkinsfile
  * Pinned down a specific version of docker
  * Getting different version of docker
  * Changing version of debian
  * Making sure everything works
  * Install specific version of docker
  * Initial commit
