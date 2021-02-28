
# valheim-server
[![CodeFactor](https://www.codefactor.io/repository/github/z3orc/valheim-docker/badge?s=0b15f0fd5dd1b957a196eef9b539e00046a17d9d)](https://www.codefactor.io/repository/github/z3orc/valheim-docker)  [![DOCKER](https://github.com/z3orc/valheim-docker/actions/workflows/docker-image.yml/badge.svg)](https://github.com/z3orc/valheim-docker/actions/workflows/docker-image.yml)

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
