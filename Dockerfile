FROM alpine:latest

RUN apk add tar \
 && mkdir -m 777 /gsnova
 
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh 

CMD /entrypoint.sh
