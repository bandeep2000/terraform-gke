node {
    stage('Checkout') {
        if (env.BRANCH_NAME == 'master') {
            echo 'I only execute on the master branch'
            checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: '19395f7f-05f7-4e25-be07-4816408ea1f9', url: 'https://github.com/bandeep2000/terraform-gke.git']]])
        } else {
            echo 'I execute elsewhere'
        }
        sh 'terraform init'
        
    }

    stage('Test') {
        sh 'terraform validate'
        sh 'terraform plan'
    }
    stage('Apply') {
        sh 'terraform apply -f'
    }
}
