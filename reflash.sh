cd ..
rm -rf ~/myworking
git clone https://github.com/minegishirei/myworking
docker compose build
docker compose run myworking bash