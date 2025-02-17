 pipeline {
    agent any
//Updated comments
    stages {
        stage('Checkout') {
            steps {
                // Checkout the Dev-branch
                git branch: 'Dev-branch', url: 'https://github.com/munishkaushal/Dgcontroller-8.0'
            }
        }
        stage('Copy Installer to Workspace') {
            steps {
                // Copy the installer to the Jenkins workspace
                sh 'cp /home/ec2-user/Dgcontroller-8.0/DgSecure-8.8.0.59-linux-x64-installer.run ${WORKSPACE}/'
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
                // Ensure the installer is executable
                sh 'chmod 755 DgSecure-8.8.0.59-linux-x64-installer.run'
            }
        }
        stage('Run Shell Script as Root') {
            steps {
                // Run the InstallDgSecure.sh script from the workspace with sudo
                sh 'sudo ${WORKSPACE}/InstallDgSecure.sh'
            }
        }
    }
}
