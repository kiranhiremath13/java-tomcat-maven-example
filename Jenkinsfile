node(){
stage("checkout"){
  checkout changelog: false, poll: false, scm: [$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/kiranhiremath13/java-tomcat-maven-example.git']]]
}
stage("package"){
  sh"mvn package"
}
stage("upload artifact"){
  sh "mvn deploy"
}
stage("rename and deploy"){

}
stage("restart tomcat"){

}
}
