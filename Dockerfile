FROM ubuntu:latest

LABEL AUTHOR=ragesh \
      VERSION=0.1 \
      EMAIL=ragesh@gmailcom 

RUN apt-get update -y \
    && apt-get install nginx -y

COPY  devilscafe.html /var/www/html

ENTRYPOINT ["service","nginx","start"&& bash]