# RPi ROS XCOMP Docker
Dockerfile to "cross compile" ROS Kinetic packages for the Raspberry Pi 3 (arm32v7) on amd64 and x86 hosts.

The interesting work is done by qemu-arm-static (provided by the [qemu-user](https://packages.debian.org/sid/qemu-user) / [qemu-user-static](https://packages.debian.org/sid/qemu-user-static) packages).
Some additional libraries and packages are included in the Docker image which may not be necessary for everyone, but which are necessary for my use case:
[librestclient-cpp](https://github.com/mrtazz/restclient-cpp/) and libmuparser for example.

The image is hosted [on docker hub](https://hub.docker.com/r/gerdes/rpi_ros).
