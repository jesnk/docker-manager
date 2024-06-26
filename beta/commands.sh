docker build -t jesn1219/beta:latest .

docker run -it --gpus all -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY -p 60061:6006 -p 22001:22 -p 22002:22002 -p 22003:22003 --name beta jesn1219/beta bash

docker run -it --gpus all -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY -p 60061:6006 -p 22001:22 -p 22002:22002 -p 22003:22003 jesn1219/beta bash

docker run -it --gpus all --volume /tmp/.X11-unix:/tmp/.X11-unix:ro -e DISPLAY=$DISPLAY -p 60061:6006 -p 22001:22 -p 22002:22002 -p 22003:22003 jesn1219/beta bash


docker run -it --gpus all -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY -p 60061:6006 -p 22001:22 --name dt2 jesn1219/odt bash


# on device
docker run -it --gpus 'device=4' -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY -p 22001:22 -p 22002:22002 -p 22003:22003 --mount type=bind,source=/data/jskang/beta,target=/root/data --name jskang_beta jesn1219/beta bash

docker run -d --gpus 'device=4' -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY -p 22001:22 -p 22002:22002 -p 22003:22003 --mount type=bind,source=/data/jskang/beta,target=/root --name jskang_beta jesn1219/beta

