cd ..
sudo rm -rf ./*
git clone https://github.com/minegishirei/myworking
cd myworking
docker-compose build -f cl9-docker-compose.yml
docker-compose run myworking -f cl9-docker-compose.yml bash