pipeline {
    agent any
    tools {
        maven 'maven1' 
    }
    stages {
        	stage('Checkout Stage'){
           		steps{
                  		git url: 'https://github.com/ravi033119/jenkinsaws.git'
				sh 'mvn --version'
              			sh 'mvn clean'
	       			}
          		}
	   	stage('Compile Stage'){
          		 steps{
		      		 sh 'mvn compile'
	       			}
             		}
	    	stage('Testing Stage'){
	  		steps{
		  		sh 'mvn test'
				 }
			}
	    		
		 stage('Package'){
          		steps{
				sh 'mvn war:war'
			}
		  }
           	
	    stage('Build') {
			steps {
				sh 'pwd'
				sh 'whoami'
				sh 'ls'
			    sh 'docker build -t image:0.1 .'
			}
		    }

    }
}
