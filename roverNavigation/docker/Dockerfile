# Use ROS Noetic base image
FROM ros:noetic

# Set environment variables
ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8
ENV DEBIAN_FRONTEND noninteractive

# Install dependencies and tools
RUN apt-get update && apt-get install -y \
    python3-colcon-common-extensions \
    ros-noetic-navigation \
    ros-noetic-gazebo-ros-pkgs \
    ros-noetic-realsense2-camera \
    gazebo11 \
    libgazebo11-dev \
    python3-pip \
    python3-rosdep \
    curl \
    gnupg2 \
    lsb-release \
    && apt-get clean

RUN apt-get install -y ros-noetic-teleop-twist-keyboard \
    ros-noetic-xacro \
    ros-noetic-ros-controllers

# Crear el espacio de trabajo
WORKDIR /workspace
RUN mkdir -p src && /bin/bash -c "source /opt/ros/noetic/setup.bash && catkin_make && source /workspace/devel/setup.bash"

# Configurar el entorno de ROS
RUN echo "source /workspace/devel/setup.bash" >> ~/.bashrc

# Exponer el puerto maestro de ROS
EXPOSE 11311

# Comando por defecto al iniciar el contenedor
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
# CMD ["roslaunch","ros_basics","simple_chatter.launch"]
