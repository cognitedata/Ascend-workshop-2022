# Ascend Workshop 2022

## Contents

* [Computer Vision](docs/CV.md)
* [Setup ROS2 + Docker in vscode](docs/development.md)

Added docker images for:

* Running ros2
* Running ros2 turtlesim
* Running airsim with [docker-nvidia](docs/docker_nvidia.md)

## Pre requisites

* Linux or Mac computer

## ROS2 + Docker turtlesim example

Start simulator:

```sh
$ make ros2-turtlesim
```

Then, start ros2 keyboard teleop

```sh
$ make ros2-app
```

## Prequisites for running docker with GPU acceleration

* [Docker with Nvidia GPU](docs/docker_nvidia.md)

When installed, try running Airsim:

Airsim:
```sh
$ make airsim-up
```