# Retrieve API
mkdir swagger
curl http://68.183.217.0:3000/swagger > swagger/swagger.yaml

# Go Swagger
docker pull quay.io/goswagger/swagger

# Generate model
docker run -v $HOME:$HOME -w $(pwd) quay.io/goswagger/swagger generate model -f ./swagger/swagger.yaml 
