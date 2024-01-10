#!/bin/bash

# Set the path to the config and style files
config_file="${HOME}/.config/waybar/river/config"
config_background_file="${HOME}/.config/waybar/river/config-background"
style_file="${HOME}/.config/waybar/river/style.css"
style_background_file="${HOME}/.config/waybar/river/style-background.css"

# Swap names of config files
mv "${config_file}" "${config_file}.bak"
mv "${config_background_file}" "${config_file}"
mv "${config_file}.bak" "${config_background_file}"

# Swap names of style files
mv "${style_file}" "${style_file}.bak"
mv "${style_background_file}" "${style_file}"
mv "${style_file}.bak" "${style_background_file}"

echo "File names swapped successfully!"

pkill waybar
waybar -c ~/.config/waybar/river/config -s ~/.config/waybar/river/style.css &

