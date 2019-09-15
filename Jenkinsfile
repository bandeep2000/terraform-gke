node {
    stage('Example') {
        if (env.BRANCH_NAME == 'master') {
            echo 'I only execute on the master branch'
        } else {
            echo 'I execute elsewhere'
        }
        sh 'terraform init'
        sh 'terraform plan'
        sh 'terraform validate'
    }
}
