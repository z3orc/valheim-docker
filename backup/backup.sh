#!/bin/sh
cp /home/steam/valheimbackup/mnt/worlds/${WORLD}.fwl /home/steam/valheimbackup/dest
cp /home/steam/valheimbackup/mnt/worlds/${WORLD}.db /home/steam/valheimbackup/dest

cd /home/steam/valheimbackup/dest

tar -cvf ${WORLD}-$(date +"%F@%R").tar ${WORLD}.fwl ${WORLD}.db

rm ${WORLD}.fwl ${WORLD}.db