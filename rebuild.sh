#!/bin/sh

# aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 013616022302.dkr.ecr.us-east-1.amazonaws.com

docker build -t cloudapp/static-ffmpeg .
docker tag cloudapp/static-ffmpeg:latest 013616022302.dkr.ecr.us-east-1.amazonaws.com/cloudapp/static-ffmpeg:latest
docker push 013616022302.dkr.ecr.us-east-1.amazonaws.com/cloudapp/static-ffmpeg:latest
