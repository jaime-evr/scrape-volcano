You will need ffmpeg to create the video.

`mkdir images`

`ruby volcano.rb`

`cd images`

`ffmpeg -framerate 10 -i %d.jpg -c:v libx264 -r 30 ../output.mp4`
