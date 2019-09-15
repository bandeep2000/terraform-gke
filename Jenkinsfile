node {
    stage('Example') {
        if (env.BRANCH_NAME == 'master') {
            echo 'I only execute on the master branch'
        } else {
            echo 'I execute elsewhere'
        }
        checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: '19395f7f-05f7-4e25-be07-4816408ea1f9', url: 'https://github.com/bandeep2000/kubernetes-ban.git']]])
        sh 'terraform init'
        sh 'terraform plan'
        sh 'terraform validate'
    }
}
