#! /bin/sh

set -e

image="jupyter/datascience-notebook"
name="datascience-notebook-container"

docker run -it --rm \
  -p 8888:8888 \
  --name "$name" \
  -v "$(pwd)/src:/home/jovyan/work" \
  "$image" \
  start-notebook.sh --NotebookApp.token=''