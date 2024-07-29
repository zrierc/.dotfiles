dockerd-stop() {
  sudo systemctl disable --now docker.service docker.socket
}

dockerd-start() {
  sudo systemctl start docker.service docker.socket
}

docker-clean() {
  docker image prune --force
  docker container prune --force
  docker volume prune --force
}

docker-clean-all() {
  echo -n "This will delete all available docker images, containers, and volumes. Continue? [Y/n]"
  read -r ans

  if [[ "$ans" == "y" || "$ans" == "Y" ]]; then
    docker rmi --force $(docker images -aq)
    docker rm --force $(docker images -aq)
    docker volume rm --force $(docker volume ls -qf dangling=true)
  else
    echo -n "Operation aborted."
  fi
}
