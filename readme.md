
# Valheim server
 ![CodeFactor Grade](https://img.shields.io/codefactor/grade/github/z3orc/valheim-docker?style=for-the-badge) &nbsp;&nbsp; ![GitHub Workflow Status](https://img.shields.io/github/workflow/status/z3orc/valheim-docker/Docker%20Build?style=for-the-badge) &nbsp;&nbsp; ![GitHub release (latest by date)](https://img.shields.io/github/v/release/z3orc/valheim-docker?style=for-the-badge) &nbsp;&nbsp; ![Docker Image Version (latest by date)](https://img.shields.io/docker/v/z3orc/valheim-server?label=DOCKER&style=for-the-badge) &nbsp;&nbsp; ![Docker Pulls](https://img.shields.io/docker/pulls/z3orc/valheim-server?style=for-the-badge) 
## Info
Based on cm2network/steamcmd.

The "valheim_data" volume is where the server files downloaded form SteamCMD are stored. "valheim_save" is where the world-file is stored.

## Installation/usage

```
docker volume create valheim_data && docker volume create valheim_save


docker run -d \
    --name=valheim \
    -p 2456-2458:2456-2458/udp \
    -v valheim_data:/home/steam/valheim \
    -v valheim_save:/home/steam/.config/unity3d/IronGate/Valheim \
    -e NAME="My server" \
    -e WORLD="Dedicated" \
    -e PASSWORD="secret" \
    -e PUBLIC=1 \
    z3orc/valheim-server
```
