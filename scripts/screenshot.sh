#!/run/current-system/sw/bin/bash

OUTPUT_DIR="$HOME/personal/screenshots"
FILENAME="screenshot_$(date +%Y%m%d_%H%M%S).png"
OUTPUT_PATH="$OUTPUT_DIR/$FILENAME"

mkdir -p "$OUTPUT_DIR"

REGION=$(slurp)

if [ -z "$REGION" ]; then
  echo "No region selected."
  exit 1
fi

grim -g "$REGION" "$OUTPUT_PATH"

if [ $? -eq 0 ]; then
  echo "Screenshot saved to $OUTPUT_PATH"
else
  echo "Failed to take screenshot."
  exit 1
fi
