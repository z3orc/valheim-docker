FROM alpine:3.3

ADD crontab.txt /crontab.txt
ADD backup.sh /backup.sh
COPY entrypoint.sh /entrypoint.sh
RUN chmod 755 /backup.sh /entrypoint.sh
RUN /usr/bin/crontab /crontab.txt
RUN mkdir -p /home/steam/valheimbackup/mnt && mkdir -p /home/steam/valheimbackup/dest

CMD ["/entrypoint.sh"]