# devcontainer-collection
Collection of ready-to-use devcontainer configurations.


## What are devcontainers?
Check out these sources:
* [Developing inside a Container](https://code.visualstudio.com/docs/devcontainers/containers)
* [VS Code Remote Development](https://code.visualstudio.com/docs/remote/remote-overview)
* [Dev Container metadata reference](https://code.visualstudio.com/docs/devcontainers/create-dev-container)


## How to use this collection?
1. Clone this repository.
2. Choose which configuration fits your project the best.
3. Copy the chosen `.devcontainer` directory into the root directory of your project.
4. Customize the configuration to further fit your use case.


## Permissions on Linux
Almost every container uses the `root` user by default. To prevent any sort of file accessing issues related to permissions while using devcontainers you must run the following commands:

```bash
chmod -R a+rw your/project/path
```
```bash
setfacl -d -m u::rw your/project/path
```
```bash
setfacl -d -m g::rw your/project/path
```
```bash
setfacl -d -m o::rw your/project/path
```

Files and directories within "your/project/path" will have full read and write permissions (rw-rw-rw-), including new files created after running the commands.
Windows + WSL users don't have to deal with this.


## GPU support on Linux
If you want to use `--gpus=all` on Linux, follow the resources below:
* [Install Docker Desktop on Linux](https://docs.docker.com/desktop/install/linux-install/)
* [Install Docker Engine on Ubuntu](https://docs.docker.com/engine/install/ubuntu/)
* [Installing Docker and The Docker Utility Engine for NVIDIA GPUs](https://docs.nvidia.com/ai-enterprise/deployment-guide-vmware/0.1.0/docker.html)
* [NVIDIA drivers installation](https://ubuntu.com/server/docs/nvidia-drivers-installation)
* [How to install CUDA & cuDNN](https://gist.github.com/denguir/b21aa66ae7fb1089655dd9de8351a202)
* [Installing the NVIDIA Container Toolkit](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/latest/install-guide.html)

Note: Docker Desktop + NVIDIA Container Toolkit is not supported on Linux until they specifically announce compatibility in the future. For now, use Docker Engine through a CLI.


## GPU support on Windows
Download and install the latest NVIDIA driver from the official website.
