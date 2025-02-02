#!/run/current-system/sw/bin/bash

CONFIG="$HOME/.config/wofi/config/config"
STYLE="$HOME/.config/wofi/src/mocha/style.css"

if [[ ! $(pidof wofi)  ]]; then
  wofi --conf "${CONFIG}" --style "${STYLE}"
else
  pkill wofi
fi
