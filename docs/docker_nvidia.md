## **Installing Nvidia container toolkit for GPU simulation**

#### **Installation**
[Full documentation](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/install-guide.html)

To make the Nvidia GPU drivers visible to the running docker containers, we need to install the
*Nvidia container toolkit* natively on our computer. First, search for "Additional drivers" in the Linux explorer. Then choose the latest Nvidia driver (i.e Nvidia Driver 470). After that, run:


```sh
$ distribution=$(. /etc/os-release;echo $ID$VERSION_ID) \
   && curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | sudo apt-key add - \
   && curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | sudo tee /etc/apt/sources.list.d/nvidia-docker.list
```

and then install the toolkit:

```sh
$ sudo apt-get update && sudo apt-get install -y nvidia-docker2
```

to run Ignition Gazebo utilizing the GPU, then run from the root of this repo:

```sh
$ make sim-up-gpu
```
#### **Monitor GPU usage**

To monitor the GPU usage, install (for Nvidia Driver 470):

```sh
$ nvidia-utils-470 470.74-0ubuntu0.20.04.1
```

Live monitoring of GPU usage:

```sh
$ nvidia-smi -l 0.1
```