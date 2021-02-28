
# valheim-server

## Info
Based on "cm2network/steamcmd".

The "valheim_data" volume is where the server files downloaded form SteamCMD are stored. "valheim_save" is where the world-file is stored.

## Installation/usage

```
docker volume create valheim_data && docker volume create valheim_save


docker run -d \
    --name=valheim
    -p 2456-2458:2456-2458/udp \
    -v valheim_data:/home/steam/valheim \
    -v valheim_save:/home/steam/.config/unity3d/IronGate/Valheim \
    -e NAME="My server" \
    -e WORLD="Dedicated" \
    -e PASSWORD="secret" \
    z3orc/valheim-server
```
