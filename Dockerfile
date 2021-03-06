FROM cm2network/steamcmd:steam

RUN mkdir -p /home/steam/valheim && mkdir -p /home/steam/.config/unity3d/IronGate/Valheim

USER steam

WORKDIR /home/steam/valheim

COPY entrypoint.sh /home/steam/valheim

EXPOSE 2456-2458/udp
ENV SERVER_NAME="My server"
ENV PASSWORD="secret"
ENV WORLD_NAME="Dedicated"
ENV PORT=2456
ENV PUBLIC=1

ENTRYPOINT ["/bin/bash" , "entrypoint.sh"]

VOLUME [ "/home/steam/valheim", "/home/steam/.config/unity3d/IronGate/Valheim" ]
