# build your image
docker build . -t dockerized-express-server
# create your repository in aws
aws ecr create-repository --repository-name dexpress --region eu-west-1
# tag the image with the repoUrl gotten from previous command
docker tag dockerized-express-server 379005348266.dkr.ecr.eu-west-1.amazonaws.com/dexpress
# login to the repo
aws ecr get-login-password | docker login --username AWS --password-stdin 379005348266.dkr.ecr.eu-west-1.amazonaws.com/dexpress
# push to the repo
docker push 379005348266.dkr.ecr.eu-west-1.amazonaws.com/dexpress