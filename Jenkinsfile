pipeline{
	agent any
	stages{
		stage("clone"){
		 steps{
		  git branch:"main", url: "https://github.com/11kamleshm/Sample-Devops.git"
}
}
		stage("Build Docker image"){
		 steps{
		  sh 'docker build -t kamlesh021/website:v1 .'
}
}
		stage("Push to Docker"){
		 steps{
		  withCredentials([usernamePassword(credentialsId:'dockerhub-creds',usernameVariable:'USER',passwordVariable:'PASS')]){
	sh """ 
		docker login -u $USER -p $PASS
		docker push kamlesh021/website:v1
	   """
}
}
}
		stage('Deploy on Kubernetes') {
    		  steps {
                // 👇 Yaha set karo KUBECONFIG
                withEnv(["KUBECONFIG=/etc/kubernetes/admin.conf"]) {
                    sh 'kubectl apply -f website-deployment.yaml'
		    sh 'kubectl apply -f website-service.yaml'
                }
            }
}
}
}
