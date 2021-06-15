# Info

Holding space for my work on Radius-Audit. I've still not got it working though...

# Steps

1. Download the Docker file within  this project to a new folder
2. Connect your Wifi card to your machine
3. Run the this within the folder of your Dockerfile `sudo docker build -t jonauditradius .`
4. Run this to get inside the newly created Docker image `sudo docker run -it --entrypoint=/bin/bash --net="host" --privileged jonauditradius`
5. Run /radius-audit/ra.py to use the application


# Clearing down
1. Exit out of the docker container
2. Use `sudo docker ps -a` to find the image name we just created
3. Use `sudo docker image rm -f <image name>` to delete the image

