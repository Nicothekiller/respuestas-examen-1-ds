#!/usr/bin/env bash
# Levantar servicios
docker-compose up --build

# Bajar servicios y eliminar volúmenes
docker-compose down
