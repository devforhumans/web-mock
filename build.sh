docker run -it --rm -v $PWD:/web-mock -w /web-mock -d node:17 ./generate-css.sh
docker run --name my-nginx -v $PWD:/usr/share/nginx/html:ro -p 80:80 -d nginx:1.23.3-alpine
docker run -it --rm -v $PWD:/web-mock -w /web-mock node:17 bash