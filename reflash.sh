cd ..
sudo rm -rf ./*
git clone https://github.com/minegishirei/myworking
cd myworking
docker compose build
docker compose run myworking bash