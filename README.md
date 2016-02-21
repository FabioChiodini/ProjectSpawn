# ProjectSpawn
Code to spawn Web Servers accross Clouds

This piece of code (using a master AMI installed with https://github.com/FabioChiodini/AWSDockermachine ) does the following:
•	Load env variables from a file (rough) to connect to AWS
•	Creates a new AMI using docker-machine
•	Opens port 80 for that AMI on AWS Security Groups
•	Launches a nginx web server in the docker-machine provisioned AMI
•	Prints out the public ip for the web server
•	[OPTIONAL for testing] Destroys the AMI provisioned

It uses a file to load the variables needed (/home/ec2-user/Cloud1).

This file has the following format:
export K1_AWS_ACCESS_KEY=AKXXXXXX

export K1_AWS_SECRET_KEY=LXXXXXXXXXX

export K1_AWS_VPC_ID=vpc-XXXXXX

export K1_AWS_ZONE=b

export K1_AWS_DEFAULT_REGION=us-east-1

export AWS_DEFAULT_REGION=us-east-1

