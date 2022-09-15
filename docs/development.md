# **How to Develop**

## **Configure development environment**

**Prerequisites**

* vscode
* Docker
* docker-compose

**Open a containerized development session**

Open `Ascend-workshop-2022` in *VSCode* and make sure to install the extensions such as in the pop-up (press `Ctrl + Shift + X` if extensions are installed in DEV CONTAINER: ROS2_WS) to see ) that should appear in you bottom-right corner. After installing the extensions for VSCode, you should reload your window. `Ctrl + Shift + P` should open your VSCode command palette. Execute *"Reload Window"*. You should now see a prompt in your bottom left that should say *"Reopen in Container"*. The same can be achieved by executing *"Remote-Containers: Reopen in Container"* in the VSCode command palette. Your window should now reload, and launch your ros-workspace in an isolated container. We can now begin programming with ROS2.

to check that your container is correctly set up, try:

```sh
$ ros2 --help
```

If your command is recognized, you should be correctly set up.

## **Creating a package**
You can create a package using either **CMake** or **Python**

```
├── ros2_ws/src
│   ├── python_pkg
│   │   ...
│   │   ├── setup.cfg
│   │   └── setup.py
│   │   └── package.xml
│   ├── cpp_pkg
│   │   ...
│   │   └── CMakelists.txt
│   │   └── package.xml
```

## **Testing**

[Gtest unit testing with ros2](https://autowarefoundation.gitlab.io/autoware.auto/AutowareAuto/unit-testing.html)

[C++ unit testing](https://www.youtube.com/watch?v=16FI1-d2P4E)

First go to directory `hydro-ros2/ros2_ws/`

Then to build tests + run tests use command:
```sh
$ colcon build && colcon test
```

## **Running vscode development container on MacOS**

Follow this guide for how to run GUI applications in Docker containers on mac:

https://sourabhbajaj.com/blog/2017/02/07/gui-applications-docker-mac/

The *DISPLAY* environment variable has to be set in 3 places:
* [Makefile](../Makefile) (2 places)
* [devcontainer.json](../.devcontainer/devcontainer.json)