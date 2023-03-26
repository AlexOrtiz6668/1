#!/bin/bash

set -e

while true
do
  ffmpeg -method POST -headers "User-Agent: Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:89.0) Gecko/20100101 Firefox/89.0"  -stream_loop -1 -re -i https://5b8462eb3469a.streamlock.net:444/copbfl1/copbfl1.stream/chunklist_w1943310215.m3u8  -stream_loop -1 -re -i https://stream-43.zeno.fm/q5wu63rg2c9uv?zs=Ac_OpxqARC-kKObUG4LcHQ   -vcodec libx264 -pix_fmt yuvj420p -maxrate 20048k -preset veryfast -r 12 -framerate 30 -g 50 -c:a aac -b:a 128k -ar 44100 -strict experimental -video_track_timescale 1000 -b:v 150000k -f flv rtmp://livepush.trovo.live/live/$KEY
done
