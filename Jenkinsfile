node {
   stage 'checkout'
   
      checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false,
                extensions: [], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/Rajashekar94/Autoscaling.git']]])

  stage('Terraform init'){

  sh "terraform init"
  }
 stage('Terraform plan'){

 sh "terraform plan"
 }

stage('Terraform apply'){

    sh "terraform apply -input=false -auto-approve"

    }

    }
