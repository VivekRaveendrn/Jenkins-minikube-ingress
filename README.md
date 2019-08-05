
## Getting Started with the project ##

* Download the repository into your local
* Get into the folder "AHeroJenkins" in the root
   * $ helm lint
* Move out from "AHeroJenkins" ( cd ../)
* Current folder shoule be "Jenkins-minikube-ingress"
* Create a namespace if you require for your deployment
   * $ kubectl create namespace jenkins
* Deploy your chart to the above namesapce
   * $ helm install --name jenkins ./AHeroJenkins --namespace=jenkins
* If required, you can also deploy to default namespace using
   * $ helm install --name jenkins ./AHeroJenkins
* To use jenkins-deployment-creator.sh
    * chmod +x jenkins-deployment-creator.sh
    * ./jenkins-deployment-creator.sh jenkins jenkins
* To use jenkins-deployment-terminator.sh
    * chmod +x jenkins-deployment-terminator.sh
    * ./jenkins-deployment-creator.sh jenkins jenkins
    
#### Things done in this project ####
* Created custom Docker image
* Created namespace.yaml for namespace creation in k8s
* Created deployment.yaml, services.yaml and ingress.yaml
* Configured ingress
* Created Helm charts
* Created custom namespace
* Deploy into the namespace
* Shell script to wipe out your ns and chart
* Shell script for chart deployment

#### Helm Handy Commands : ####
helm ls --all jenkins (List your Helm chart "jenkins")
helm del --purge jenkins (only if you required)

### Note ###
* You can create as many slaves as required
* If required, login to the console and create number slaves
* Download and edit as per your requirement
