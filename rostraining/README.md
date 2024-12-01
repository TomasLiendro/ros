# Proyecto ROS con Docker

Este proyecto muestra cómo configurar y ejecutar un proyecto ROS utilizando Docker para simplificar la gestión de dependencias y el entorno.

## Estructura del Proyecto

- **docker/**: Contiene los archivos relacionados con Docker (Dockerfile, docker-compose.yml, y scripts).
- **src/**: Código fuente del paquete ROS.
- **ws/**: Espacio de trabajo Catkin.

## Cómo Usar

1. **Construir y ejecutar el contenedor:**
   ```bash
   ./docker/run_docker.sh
