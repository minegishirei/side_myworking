cd ..
Remove-Item  ./*  -Recurse -Force
git clone https://github.com/minegishirei/myworking
cd myworking
docker-compose -f business-docker-compose.yml build
docker-compose -f business-docker-compose.yml run myworking bash