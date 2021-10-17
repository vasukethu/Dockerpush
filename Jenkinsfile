pipeline{
    agent any
    stages{
        stage("Git Clone"){
            steps{
                echo "========executing A========"
            }
        }
        stage("Build Image"){
            steps{
                echo "============Build Image"
            }
        }
    }
    post{
        always{
            echo "========always========"
        }
        success{
            echo "========pipeline executed successfully ========"
        }
        failure{
            echo "========pipeline execution failed========"
        }
    }
}
