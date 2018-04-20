#!/usr/bin/env bash

__ranchervm_config()
{
  configurations="configurations"
  current_path="$_RANCHERVM_ROOT/current"

  config=$1
  if [[ -z "$config" ]]; then
    config=$(readlink $current_path | sed "s/$configurations\///")
  fi

  default_path="$_RANCHERVM_ROOT/$configurations/default"
  config_path="$configurations/$config"

  if [[ "$config" == "default" ]]; then
    config=$(readlink $default_path) || true
  fi

  return 0
}
export -f __ranchervm_config
