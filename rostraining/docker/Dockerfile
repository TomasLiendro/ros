# Usar una imagen base de ROS Noetic
FROM ros:noetic

# Configurar variables de entorno
ENV DEBIAN_FRONTEND=noninteractive

# Instalar dependencias esenciales
RUN apt-get update && apt-get install -y \
    python3-rosdep \
    python3-rosinstall \
    python3-rosinstall-generator \
    python3-wstool \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# Inicializar rosdep
RUN if [ ! -f /etc/ros/rosdep/sources.list.d/20-default.list ]; then \
      rosdep init && rosdep update; \
    else \
      rosdep update; \
    fi

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
