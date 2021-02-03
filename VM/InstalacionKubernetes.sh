#Instalar MINIKUBE
#Link de instalación: https://kubernetes.io/es/docs/tasks/tools/install-kubectl/

curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 \

chmod +x minikube

sudo cp minikube /usr/local/bin && rm minikube

sudo apt-get update && sudo apt-get install -y apt-transport-https gnupg2 curl
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update
sudo apt-get install -y kubectl

#Crear el grupo de docker
sudo groupadd docker

#Agregar el usuario al grupo de docker
sudo usermod -aG docker $USER

#Salir y volver a entrat al VM

#Verificamos la versión de minikube 
minikube version

#Iniciamos un cluster de minikube 
minikube start

#Verificamos la versión del cluster
kubectl version

#Visualizamos la información del closter
kubectl cluster-info

#Mirar los nodos creados en el cluster
kubectl get nodes

#Inspeccionar los pods que estan corriendo 
kubectl get pods --all-namespaces

#Verificar los deplyments que se han hecho 
kubectl get deployments