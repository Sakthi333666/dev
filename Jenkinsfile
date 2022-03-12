pipeline{
    agent any
    parameters{
        choice(name:'VERSION',choice:['1.1.1','1.1.2','1.1.3'],description:'Project version')
        booleanParam(name:'executeTest'defaultValue: true,description:'Skip the steps')
    }
    stages{
        stage('build'){
            steps{
                echo 'Building the application.......'
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