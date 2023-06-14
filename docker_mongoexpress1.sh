

## 运行mongo
docker run -itd --name myMongo 
  --network=host 
  -e MONGO_INITDB_ROOT_USERNAME='mongoadmin' 
  -e MONGO_INITDB_ROOT_PASSWORD='mongoadmin' 
  mongo:4.0.27

## 运行mongo express
docker pull mongo-express:latest

docker run -itd  --name mongo-express                 \
  --network=host                                      \
  --env ME_CONFIG_MONGODB_SERVER='192.168.79.40'      \
  --env ME_CONFIG_MONGODB_ADMINUSERNAME='mongoadmin'  \
  --env ME_CONFIG_MONGODB_ADMINPASSWORD='mongoadmin'  \
  --env ME_CONFIG_BASICAUTH_USERNAME='mongoadmin'     \
  --env ME_CONFIG_BASICAUTH_PASSWORD='mongoadmin'     \
  mongo-express:latest





