cd ..
sudo rm -rf ./*
git clone https://github.com/minegishirei/myworking
cd myworking
docker-compose -f cl9-docker-compose.yml build 
docker-compose -f cl9-docker-compose.yml run myworking bash