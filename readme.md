
# valheim-server

## Info
The "valheim_data" volume is where the server files downloaded form SteamCMD are stored. "valheim_save" is where the world-file is stored.

## Installation/usage

```
docker volume create valheim_data && docker volume create valheim_save


docker run -d \
    -p 2456-2458:2456-2458/udp \
    -v valheim_data:/home/steam/valheim \
    -v valheim_save:/home/steam/.config/unity3d/IronGate/Valheim \
    z3orc/valheim-server
```
