#Load Env variables from File (maybe change to DB)
#using /home/ec2-user/Cloud1
#source /home/ec2-user/Cloud1
. /home/ec2-user/Cloud1

printenv AWS_SECRET_KEY

printenv AWS_VPC_ID

#Spawns VM with UUID
UUIDK=$(cat /proc/sys/kernel/random/uuid)

#docker-machine create --driver amazonec2 
docker-machine create --driver amazonec2 --amazonec2-access-key $AWS_ACCESS_KEY --amazonec2-secret-key $AWS_SECRET_KEY --amazonec2-vpc-id  $AWS_VPC_ID --amazonec2-zone $AWS_ZONE --amazonec2-region $AWS_DEFAULT_REGION SPAWN-$UUIDK

#Open port 80 on VM


#Deploys docker


#Displays Public IP


