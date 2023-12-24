cd ..
sudo rm -rf ./*
git clone https://github.com/minegishirei/myworking
cd myworking
docker compose -f personal-docker-compose.yml build 
docker compose -f personal-docker-compose.yml run myworking bash