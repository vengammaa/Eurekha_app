node {
    stage('scm checkout'){
     git credentialsId: 'github', url: 'https://github.com/vengammaa/Eurekha_app.git'   
    }
    stage(" Maven Clean Package"){
        def mavenHome = tool name: 'Maven3', type: 'maven'
        def mavenCMD = "${mavenHome}/bin/mvn"
        sh "${mavenCMD} clean package"
    }
}
