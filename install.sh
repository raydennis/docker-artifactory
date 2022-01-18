# Docker Compose Installation Using Docker Volumes

## 1. Create Docker volumes.

docker volume create --name=artifactory_data
docker volume create --name=postgres_data

## 2. Extract the contents of the compressed archive and go to the extracted folder.

### tar -xvf jfrog-artifactory-<pro|oss|cpp-ce>-<version>-compose.tar.gz

## 3. Copy the docker-compose-volumes.yaml to the extracted folder.

cp templates/docker-compose-volumes.yaml docker-compose.yaml

## 4. Add the entries in the .env file.       

### Avoid adding duplicate entries in the .env file.

echo -e "JF_SHARED_NODE_IP=$(hostname -i)" >> .env
echo -e "JF_SHARED_NODE_ID=$(hostname -s)" >> .env
echo -e "JF_SHARED_NODE_NAME=$(hostname -s)" >> .env

### Manage Artifactory using native Docker Compose commands: docker-compose -p rt <action> command.
### Run this command from the extracted folder.

### Examples
#### docker-compose -p rt up -d
#### docker-compose -p rt ps
#### docker-compose -p rt down
