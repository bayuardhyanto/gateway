sudo docker build -t ubuntu/bayu . --progress=plain --no-cache
#sudo docker container create --name myubuntu ubuntu/bayu
sudo docker container create --name myubuntu -p 81:80 -p 23:22 -p 444:334 ubuntu/bayu
sudo docker container start myubuntu
#sudo docker ps 
#sleep 5
sudo docker ps 
sudo docker exec -it myubuntu /bin/bash
