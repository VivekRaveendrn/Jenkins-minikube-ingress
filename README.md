
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

#### Things done in this project ####
* Created custom Docker image
* Created deployment.yaml, services.yaml and ingress.yaml
* Created Helm charts

#### Helm Handy Commands : ####
helm ls --all jenkins (List your Helm chart "jenkins")
helm del --purge jenkins (only if you required)
