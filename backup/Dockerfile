FROM alpine:3

ENV WORLD=Dedicated

RUN adduser -u 1000 -S steam

USER steam

RUN mkdir -p /home/steam/valheimbackup && mkdir -p /home/steam/valheimbackup/mnt && mkdir -p /home/steam/valheimbackup/dest

COPY ./backup.sh /home/steam/valheimbackup

COPY ./entrypoint.sh /home/steam/valheimbackup

USER root

RUN chown -R steam /home/steam/valheimbackup/backup.sh

USER steam

WORKDIR /home/steam/valheimbackup

ENTRYPOINT [ "./entrypoint.sh" ]

VOLUME ["/home/steam/valheimbackup/mnt", "/home/steam/valheimbackup/dest"]