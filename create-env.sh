#!/bin/bash -xe

cont_count=$1
echo "creating $cont_count container.."
sleep 2;
for i in `seq $cont_count`
do 
	echo "================================"
	echo "creating www.devops$i container.."
	sleep 1
docker run -itd --name www.devops$i shaikghouse/wc-img /bin/bash
       echo "www.devops$i container has been created !"
       echo "================================="
done
docker inspect --format {{.NetworkSettings.Networks.bridge.IPAddress}} `docker ps -q` > ips.txt
