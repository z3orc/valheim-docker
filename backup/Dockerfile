FROM alpine:3

ENV WORLD=Dedicated

RUN adduser -u 1000 -S steam

USER steam

RUN mkdir -p /home/steam/valheimbackup && mkdir -p /home/steam/valheimbackup/mnt && mkdir -p /home/steam/valheimbackup/dest

USER steam

COPY ./backup.sh /home/steam/valheimbackup

COPY ./entrypoint.sh /home/steam/valheimbackup

WORKDIR /home/steam/valheimbackup

USER root

RUN chmod +x entrypoint.sh && chmod +x backup.sh && chown -R steam backup.sh && chown -R steam entrypoint.sh

USER steam

ENTRYPOINT [ "./entrypoint.sh" ]

VOLUME ["/home/steam/valheimbackup/mnt", "/home/steam/valheimbackup/dest"]