cd ..
sudo rm -rf ./*
cd myworking
docker compose -f personal-docker-compose.yml build 
docker compose -f personal-docker-compose.yml run myworking bash