dockerhub_repo = 'fxinnovation/jenkinsk8sslave'
result         = "SUCCESS"
color          = "GREEN"
notify         = false
message        = "No special message"
try {
  node {
    ansiColor('xterm') {
      stage('checkout') {
        // Checking out scm
        checkout scm
        // Getting current commit sha1
        commit_id = sh(
          returnStdout: true,
          script: "git rev-parse HEAD"
        ).trim()
        // Getting current tag or commit sha1
        tag_id = sh(
          returnStdout: true,
          script: "git describe --tags --exact-match || git rev-parse HEAD"
        ).trim()
        // Getting scm url
        scm_url = sh(
          returnStdout: true,
          script: "git config --get remote.origin.url"
        ).trim()
        branch = sh(
          returnStdout: true,
          script: "git rev-parse --abbrev-ref HEAD"
        ).trim()
      }
      stage('pre-build') {
        // Verifying docker is up and running
        sh 'docker --version && docker images'
      }
      stage("build") {
        // Building Docker Image
        sh "docker build \
             --label \"org.label-schema.vcs-ref\"=\"${commit_id}\" \
             --label \"org.label-schema.version\"=\"${tag_id}\" \
             --label \"org.label-schema.build-date\"=\"\$(date -u +\"%Y-%m-%dT%H:%M:%SZ\")\" \
             --label \"org.label-schema.usage\"=\"${scm_url}/src?at=${tag_id}\" \
             -t ${dockerhub_repo}:${tag_id} ."
      }
      stage("publish") {
        if ( branch == "master" ) {
          sh "docker tag ${dockerhub_repo}:${tag_id} ${dockerhub_repo}:${branch}"
          withCredentials([
            usernamePassword(
              credentialsId: 'jenkins-fxinnovation-dockerhub',
              passwordVariable: 'password',
              usernameVariable: 'username'
            )
          ]){
            sh "set +x && docker login -u '${username}' -p '${password}'"
          }
          sh "docker push ${dockerhub_repo}:${branch}"
        }else{
          println ('Skipping publishing master tag, not on master')
        }
      }
    } 
  }
  podTemplate(
      cloud: 'kubernetes',
      name: 'jenkins-slave-test',
      label: "test",
      inheritFrom: 'jenkins-slave',
      containerTemplate(
        image: "${dockerhub_repo}:${branch}"
      )
  ){
    sh 'git --version'
    sh 'gcloud --version'
    sh 'kubectl version'
    sh 'jq --version'
    sh 'wget --version'
    sh 'zip --version'
    sh 'kops version'
    sh 'aws --version'
    sh 'sleep 10'
  }
}catch (error){
  result="FAILED"
  color="RED"
  notify=true
  message=error
  throw (error)
}finally {
  node {
    stage("notify"){
      hipchatSend (
        color: color,
        credentialId: 'jenkins-hipchat-token',
        message: "Job Name: ${JOB_NAME} (<a href=\"${BUILD_URL}\">Open</a>)<br /> \
                  Job Status: ${result} <br /> \
                  Job Message: <br /><pre>${message}</pre>",
        room: '942680',
        notify: notify,
        sendAs: 'New-Jenkins',
        server: 'api.hipchat.com',
        v2enabled: false
      )
    }
  }
}
