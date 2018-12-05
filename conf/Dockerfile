FROM alpine:3.7
MAINTAINER ganuonglachanh 

# BASE SET
RUN apk update && apk upgrade && apk update
RUN apk add --update bash nano && rm -rf /var/cache/apk/*

# ADDITIONAL SET

# NGINX
RUN apk add --update nginx && rm -rf /var/cache/apk/*
EXPOSE 80

# MONGODB
RUN apk add --update mongodb && rm -rf /var/cache/apk/*
RUN mkdir -p /data/db /data/logs 
EXPOSE 27017


# REDIS
RUN apk add --update redis && rm -rf /var/cache/apk/*
EXPOSE 6379


# ADDITIONAL SET
RUN apk add --update imagemagick git curl htop wget sqlite socat && rm -rf /var/cache/apk/*
# NODEJS
RUN apk add --update nodejs && rm -rf /var/cache/apk/*  

COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./mongod.conf /etc/mongod.conf
COPY ./redis.conf /etc/redis.conf

WORKDIR /home
COPY ./entry.sh /
RUN chmod +x /entry.sh

#RUN nginx -g "daemon off;"
#RUN redis-server /etc/redis.conf &
#RUN mongod --fork --logappend --logpath /data/mongod.log --port 27017
#RUN mongod -f /etc/mongod.conf --logappend --logpath /data/mongod.log --port 27017
CMD ["tail", "-f", "/dev/null"]