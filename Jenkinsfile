def gv
pipeline{
    agent any
    parameters{
        string(name: 'VERSION', defaultValue: '', description: 'Version to deploy')
        choice(name:'VERSION', choices :['1.1.1', '1.1.2', '1.1.3'], description:' Project version')
        booleanParam(name: 'executeTest' ,defaultValue: true, description: 'Skip the steps')
    }
    stages{
        stage("init"){
            steps{
                script{
                    gv = load "script.groovy"
                }
            }
        }
        stage('build'){
            steps{
                script{
                    gv.buildApp()
                }
            }
        }
        stage('testing'){
            when{
                expression{
                    params.executeTest
                }
            }
            steps{
                echo 'testing the application......'
            }
        }
        stage('deploying'){
            steps{
                echo 'deploying the application......'
                echo "deploying build version ${params.VERSION}"
            }
        }    
    }
}