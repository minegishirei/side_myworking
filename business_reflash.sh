cd ..
sudo rm -rf ./*
cd myworking
docker-compose -f business-docker-compose.yml build 
docker-compose -f business-docker-compose.yml run myworking bash