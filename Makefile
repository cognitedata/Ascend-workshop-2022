.PHONY: ros2-app ros2-turtlesim airsim-up airsim-down

run-ros2:
	sudo docker build -t ascend/ros:app -f docker/Dockerfile.ros2 .
	sudo xhost local:root && docker run -it ascend/ros:app sh\
	--network host \
	--privileged \
	-e DISPLAY \
	-e QT_X11_NO_MITSHM=1 \
	-e XAUTHORITY=/tmp/.X11-unix \
	--volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
	--rm ascend/ros:app

run-ros2-nvidia:
	sudo xhost local:root && docker-compose up -d --build ros2-nvidia

ros2-turtlesim:
	sudo xhost local:root && docker-compose up --build turtlesim

airsim-up:
		sudo xhost local:root && docker-compose up --build airsim

airsim-down:
		docker-compose down