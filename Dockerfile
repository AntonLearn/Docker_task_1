FROM ubuntu:22.04
RUN apt-get -y update && apt-get -y install nginx
COPY ./index.html /usr/share/nginx/html/index.html 
COPY ./default /etc/nginx/sites-available/default
EXPOSE 80/tcp
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
