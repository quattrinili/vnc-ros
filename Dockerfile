FROM osrf/ros:jazzy-desktop

RUN apt-get -y update && apt-get install -y \
    curl

RUN apt-get -y update && apt-get install -y \
    iputils-ping \
    net-tools \
    wget \
    screen \
    git \
    nano \
    vim \
    htop \
    ros-${ROS_DISTRO}-ros-gz \
    ros-${ROS_DISTRO}-nav2-common \
    ros-${ROS_DISTRO}-backward-ros \
    ros-${ROS_DISTRO}-controller-interface \
    ros-${ROS_DISTRO}-controller-manager \
    ros-${ROS_DISTRO}-generate-parameter-library \
    ros-${ROS_DISTRO}-depthai-descriptions \
    ros-${ROS_DISTRO}-laser-filters \
    ros-${ROS_DISTRO}-robot-localization \
    ros-${ROS_DISTRO}-gz-ros2-control
    ros-dev-tools
RUN mkdir -p /root/catkin_ws/src
WORKDIR /root/catkin_ws
RUN /bin/bash -c "source /opt/ros/${ROS_DISTRO}/setup.bash"
RUN echo "source /opt/ros/${ROS_DISTRO}/setup.bash" >> /root/.bashrc
RUN echo "defshell -bash" >> ~/.screenrc
RUN echo "source /root/catkin_ws/install/setup.bash" >> /root/.bashrc
WORKDIR /root/catkin_ws/src
