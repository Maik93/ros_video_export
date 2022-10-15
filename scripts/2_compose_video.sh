#!/usr/bin/bash
set -e

fps=30

echo "Refreshing tmp directory..."
rm -rf tmp && mkdir tmp

echo "Moving collected frames..."
mv ~/.ros/frame*.jpg tmp/.

echo "Composing video..."
ffmpeg -framerate $fps -i tmp/frame%04d.jpg -c:v libx264 -profile:v high -crf 20 -pix_fmt yuv420p output.mp4

rm -rf tmp

echo "Everything done, video stored in 'output.mp4'"
