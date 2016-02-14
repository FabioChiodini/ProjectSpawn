#Load Env variables from File (maybe change to DB)
#using /home/ec2-user/Cloud1
#source /home/ec2-user/Cloud1
. /home/ec2-user/Cloud1

printenv AWS_SECRET_KEY

printenv AWS_VPC_ID

#Spawns VM with UUID
UUIDK=$(cat /proc/sys/kernel/random/uuid)

#docker-machine create --driver amazonec2 
docker-machine create --driver amazonec2 --amazonec2-access-key $K1_AWS_ACCESS_KEY --amazonec2-secret-key $K1_AWS_SECRET_KEY --amazonec2-vpc-id  $K1_AWS_VPC_ID --amazonec2-zone $K1_AWS_ZONE --amazonec2-region $K1_AWS_DEFAULT_REGION SPAWN-$UUIDK


echo Container CREATED

#Creates a docker container remotely
docker-machine env SPAWN-$UUIDK

docker run --name docker-nginx -p 80:80 nginx

echo connect to Public IP

#Open port 80 on VM


#Gets rid of VM
#Waits for a Y (to check if all is good)
docker-machine rm SPAWN-$UUIDK


#Displays Public IP


