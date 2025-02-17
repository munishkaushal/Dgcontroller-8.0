pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Checkout the Dev-branch
                git branch: 'Dev-branch', url: 'https://github.com/munishkaushal/Dgcontroller-8.0'
            }
        }
        stage('Who Am I') {
            steps {
                // Print the current user
                sh 'whoami'
            }
        }
        stage('Set Permissions') {
            steps {
                // Ensure the script is executable
                sh 'chmod 755 InstallDgSecure.sh'
                // Ensure the installer is executable (if necessary)
                sh 'chmod 755 DgSecure-8.8.0.59-linux-x64-installer.run'
            }
        }
        stage('Run Shell Script as Root') {
            steps {
                // Run the InstallDgSecure.sh script from the workspace with sudo
                sh 'sudo /var/lib/jenkins/workspace/DSM-8.0/InstallDgSecure.sh'
            }
        }
    }
}
