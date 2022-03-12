def buildApp(){
    echo 'building an application from script.groovy'
}

def TestApp(){
    echo 'testing the application from the script.groovy'
}

def DeployApp(){
    echo 'deploy the application from the script.groovy'
    echo "deploying the version ${params.VERSION}"
}

return this