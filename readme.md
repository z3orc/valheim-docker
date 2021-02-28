# valheim-server

## Installation/usage

`docker volume create valheim_data && docker volume create valheim_save`
`docker run -d -p 2456-2458:2456-2458/udp -v valheim_data:/home/steam/valheim -v valheim_save:/home/steam/.config/unity3d/IronGate/Valheim z3orc/valheim-server`