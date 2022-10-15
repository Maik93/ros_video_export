#!/usr/bin/bash
set -e

# e.g. "/home/flynn/leo_bags/latte_2022-10-06-01-05-18.bag"
BAG="$1"
# e.g. "/t265/fisheye1/rect/image/compressed"
TOPIC="$2"

rosrun jsk_rosbag_tools bag_to_video.py ${BAG} \
    --samplerate 16000 --channels 1 \
    --image-topic ${TOPIC} \
    -o `pwd`/output.mp4
