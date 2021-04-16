# FROM ubuntu

# RUN apt-get update && apt-get install -y nginx-full
# COPY files/proxy.conf /etc/nginx/sites-available/proxy

# EXPOSE 80

FROM ubuntu:latest

RUN mkdir /data 

RUN apt-get update && apt-get install -y nginx-full

# apt-get update updates the the software, nginx-full is what I would use to store the image 

COPY files/proxy.conf /etc/nginx/sites-available/proxy

EXPOSE 80
# would I want to cmd sh? 
COPY entrypoint.sh /

RUN ["chmod", "+x", "/entrypoint.sh"]

CMD /entrypoint.sh

