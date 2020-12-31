node(){
stage("checkout"){
  checkout changelog: false, poll: false, scm: [$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/kiranhiremath13/java-tomcat-maven-example.git']]]
}
stage("package"){
  sh"mvn package"
}
stage("download artifact"){
}
stage("rename and deploy"){

}
stage("restart tomcat"){

}
}
