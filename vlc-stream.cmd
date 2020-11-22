@echo off
echo Streaming video source %1 as mpjpeg on port 18223
vlc --no-audio %1 --screen-fps 1 --sout "#transcode{vcodec=MJPG,vb=800}:standard{access=http,mux=mpjpeg,dst=:18223/}" --sout-http-mime="multipart/x-mixed-replace;boundary=--"