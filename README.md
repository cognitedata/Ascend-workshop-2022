# Ascend Workshop 2022

## Contents

* [Computer Vision](docs/CV.md)
* [Setup ROS2 + Docker in vscode](docs/development.md)

Added docker images for:

* Running ros2. Added an arbitrary ros2 project as well (ros2 ouster lidar driver)
* Running ros2, but intended for nvidia GPU.
* Running ros2 turtlesim
* Running airsim with [docker-nvidia](docs/docker_nvidia.md)

## Pre requisites

* Linux, Mac or Windows (with WSL2 preferably)
* Docker
* docker-compose  

also for running the `Makefile`:

```sh
$ sudo apt install make
```


## ROS2 + Docker turtlesim example

#### Start simulator:

```sh
$ make ros2-turtlesim
```

#### Then, start ros2 keyboard teleop

```sh
$ make ros2-app
```

or for nvidia gpu

```sh
$ make ros2-app-nvidia
```



## Airsim + Python + Docker example

Prequisites for running docker with GPU acceleration

* [Docker with Nvidia GPU](docs/docker_nvidia.md)

When installed, try running Airsim:

Airsim:
```sh
$ make airsim-up
```