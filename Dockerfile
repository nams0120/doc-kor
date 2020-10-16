# step:1 Ubuntu (base image)
FROM ubuntu:latest

# step:2 Nginx install
RUN apt-get update && apt-get install -y -q nginx

# step:3 file copy
COPY ./index.html /var/www/html/

#step:4 nginx start
EXPOSE 80

#step:5
CMD ["nginx", "-g", "daemon off;"]
