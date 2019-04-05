from arm32v7/ros:kinetic

# acquired from apt: qemu-user qemu-user-static
copy qemu-arm-static /usr/bin/

# acquired from https://github.com/mrtazz/restclient-cpp/
copy librestclient-cpp/include/* /usr/local/include/
copy librestclient-cpp/lib/* /usr/local/lib/

# found most of the necessary packages via roscheck --from-source src
run apt-get update && apt-get install -q -y \
    ros-kinetic-rosapi \
    ros-kinetic-navigation \
    ros-kinetic-move-base-msgs \
    ros-kinetic-move-basic \
    ros-kinetic-realtime-tools \
    ros-kinetic-four-wheel-steering-msgs \
    ros-kinetic-fiducial-msgs \
    ros-kinetic-driver-base \
    ros-kinetic-urdf \
    ros-kinetic-joint-trajectory-controller \
    ros-kinetic-ackermann-steering-controller \
    ros-kinetic-filters \
    ros-kinetic-canopen-motor-node \
    ros-kinetic-controller-interface \
    ros-kinetic-canopen-chain-node \
    ros-kinetic-position-controllers \
    ros-kinetic-urdf-geometry-parser \
    ros-kinetic-controller-manager \
    ros-kinetic-canopen-master \
    ros-kinetic-control-msgs \
    ros-kinetic-rqt-gui \
    ros-kinetic-can-msgs \
    ros-kinetic-socketcan-interface \
    ros-kinetic-hardware-interface \
    ros-kinetic-diff-drive-controller \
    ros-kinetic-socketcan-bridge \
    ros-kinetic-controller-manager-msgs \
    ros-kinetic-roslint \
    ros-kinetic-velocity-controllers \
    ros-kinetic-joint-state-controller \
    ros-kinetic-control-toolbox \
    ros-kinetic-rqt-gui-py \
    ros-kinetic-dnn-detect \
    ros-kinetic-gazebo-ros \
    ros-kinetic-xacro \
    ros-kinetic-canopen-402 \
    ros-kinetic-joint-limits-interface \
    ros-kinetic-imu-sensor-controller \
    ros-kinetic-force-torque-sensor-controller \
    ros-kinetic-gripper-action-controller \
    ros-kinetic-rqt-joint-trajectory-controller \
    ros-kinetic-forward-command-controller \
    ros-kinetic-effort-controllers \
    libmuparser-dev
