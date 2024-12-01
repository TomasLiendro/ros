#!/bin/bash

# Nombre del servicio en docker-compose
SERVICE_NAME=ros1

# Construir la imagen y ejecutar el contenedor
docker compose -f docker/docker-compose.yml up --build -d
# sleep 5
# docker exec ros1_container /bin/bash -c "source /opt/ros/noetic/setup.bash && cd /workspace/ws && catkin_make"

# Conectar al contenedor en modo interactivo
# docker exec -it ${SERVICE_NAME}_container /bin/bash
