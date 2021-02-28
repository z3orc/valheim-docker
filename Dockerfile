FROM cm2network/steamcmd:steam

RUN mkdir -p /home/steam/valheim && mkdir -p /home/steam/.config/unity3d/IronGate/Valheim

WORKDIR /home/steam/valheim

ADD entrypoint.sh entrypoint.sh

EXPOSE 2456-2458/udp
ENV NAME="My server"
ENV PASSWORD="secret"
ENV WORLD="Dedicated"
ENV PORT=2456

ENTRYPOINT ["/bin/bash" , "entrypoint.sh"]

VOLUME [ "/home/steam/valheim", "/home/steam/.config/unity3d/IronGate/Valheim" ]
