FROM ubuntu
RUN apt update
RUN apt install software-properties-common -y
RUN add-apt-repository ppa:nextcloud-devs/client -y
RUN apt update
RUN apt install nextcloud-client -y
RUN mkdir -p /sync/data
COPY ./nextcloud-sync-loop.sh /opt/nextcloud-sync-loop.sh
RUN chmod +x /opt/nextcloud-sync-loop.sh
WORKDIR /opt
CMD ./nextcloud-sync-loop.sh
