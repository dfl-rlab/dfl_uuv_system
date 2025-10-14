# dfl_uuv_system

This is the system setup repo for DFL UUV project.
> [!NOTE]
> Everything is running and testing in docker using Nvidai Jetson Orin Nano/NX/AGX
> 
> The Jetpack version is 6.1
>
> Keep in mind this is edge computing unit and is aarch64

The main libraries are specified below:
  - [x] ROS2 Humble
  - [x] PCL 1.15
  - [x] GTSAM 4.2a9
  - [x] CUDA 12.6
  - [x] cudnn 9.13
  - [x] torch 2.8.0
  - [x] tensorflow 2.16
  - [x] torch vision 0.23.0
  - [x] opencv 4.11.0
        
## Build Docker Image
```
git clone https://github.com/dfl-rlab/dfl_uuv_system.git
cd dfl_uuv_system
./build.bash
```
