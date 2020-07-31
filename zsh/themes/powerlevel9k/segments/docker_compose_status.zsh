prompt_docker_compose_status() {
  set_default POWERLEVEL9K_DOCKER_COMPOSE_FILE_NAME "docker-compose.yml"
  set_default POWERLEVEL9K_DOCKER_COMPOSE_STATUS_ICON ""

  if is_docker_compose_alive $POWERLEVEL9K_DOCKER_COMPOSE_FILE_NAME
  then
    "$1_prompt_segment" "$0" "$2" "$DEFAULT_COLOR_INVERTED" "$DEFAULT_COLOR" "$POWERLEVEL9K_DOCKER_COMPOSE_STATUS_ICON"
  fi
}
