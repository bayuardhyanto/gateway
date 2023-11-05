FROM ubuntu:latest

RUN mkdir /run/sshd 
#&& chmod -R 777 /run/sshd
#RUN apt update && apt install -y apt-utils

RUN apt-get update && apt-get install -y nano curl openssh-server iproute2 nginx

#CMD ["/usr/sbin/sshd","-D"] 
RUN mkdir /app
COPY run.sh /app

STOPSIGNAL SIGTERM
#CMD ["nginx", "-g", "daemon off;"]

CMD ["/app/run.sh"]
