WORKSPACE="$1-workspace"
SHARED_MEM="8G"
IMAGE="nvidia/cuda:10.1-cudnn7-devel-ubuntu18.04"

docker run --runtime=nvidia -d --shm-size $SHARED_MEM\
           -v /data/$WORKSPACE:/data -v /data/shared:/shared\
           -p $2:8888 -p $3:22 \
           --name $WORKSPACE\
           $IMAGE tail -f /dev/null
