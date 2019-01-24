#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "$CURRENT_DIR/helpers.sh"
WINDOW_NAME=$(format_floating_name $1)
if [ "0" == "$(window_exists $1)" ]; then
  source "$CURRENT_DIR/hide_pane.sh"
else
  source "$CURRENT_DIR/show_pane.sh"
fi
