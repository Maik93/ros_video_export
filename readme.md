# Video exporting from rosbags
Works on compressed streams too.

## A. Single shoot with jsk_common
Dependency: https://github.com/jsk-ros-pkg/jsk_common (and all its dependencies).
```bash
rosrun export_video jsk_exract_video.sh ./latte_2022-10-06-01-05-18.bag /t265/fisheye1/rect/image/compressed
```

## B. Two-step exporting
Dependency: ffmpeg.

### 1. Extract frames
```bash
roslaunch export_video 1_export_frames.launch \
    bag:=`pwd`/planner_2022-09-27-10-50-05.bag \
    topic:=/t265/fisheye1/rect/image \
    compressed:=true
```

### 2. Compose video from frames
```bash
rosrun export_video 2_compose_video.sh
```

## Refs
- http://wiki.ros.org/rosbag/Tutorials/Exporting%20image%20and%20video%20data
