cd /home/ubuntu
mkdir git
cd /home/ubuntu/git
git clone https://github.com/aamirpinger/docker-assignment.git
git clone https://github.com/sharanushettar644/k8s.git
sudo apt update
sudo apt install docker 
touch Dockerfile
client > Dockerfile
aws ecr get-login-password --region us-west-2 | docker login --username AWS --password-stdin 883195043912.dkr.ecr.us-west-2.amazonaws.com
docker build -t sharan-ecr .
docker tag sharan-ecr:latest 883195043912.dkr.ecr.us-west-2.amazonaws.com/sharan-ecr:latest
docker push 883195043912.dkr.ecr.us-west-2.amazonaws.com/sharan-ecr:latest

helm create clientapp
helm upgrade --install sharan-client clientapp
helm ls
#first = helm create sharan
#sec = helm upgrade sharan

#echo "if u want to install hel den press 1 or u want to update press 2"
#read a
#if $a == 1
#then
#	helm create sharan	
#elif $a == 2
#then
#	$sec
