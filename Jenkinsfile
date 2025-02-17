pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Checkout the Dev-branch
                git branch: 'Dev-branch', url: 'https://github.com/munishkaushal/Dgcontroller-8.0'
            }
        }
        stage('Set Permissions') {
            steps {
                // Set execute permissions for the InstallDgSecure.sh script
                sh 'chmod 755 InstallDgSecure.sh'
            }
        }
        stage('Run Shell Script') {
            steps {
                // Run the InstallDgSecure.sh script from /opt/ directory
                sh './InstallDgSecure.sh'
            }
        }
    }
}
