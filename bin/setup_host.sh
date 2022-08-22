DB_PASSWORD=123456
container_name=mangosteen-prod-1

version=$(cat mangosteen_deploy/version)

echo 'docker build ...'
docker build mangosteen_deploy -t mangosteen:$version
if [ "$(docker ps -aq -f name=^mangosteen-prod-1$)" ]; then
  echo 'docker rm ...'
  docker rm -f $container_name
fi
echo 'docker run ...'
docker run -d -e DB_HOST=$DB_HOST -e RAILS_MASTER_KEY=$RAILS_MASTER_KEY -p 3030:3030 --network=network1 -e DB_PASSWORD=$DB_PASSWORD --name=$container_name mangosteen:$version
echo 'DONE!'