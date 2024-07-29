#!/usr/bin/env bash

# Get id of touchpad
id=$(xinput list | grep -i "Touchpad" | cut -d'=' -f2 | cut -d'[' -f1)

# get id of the field corresponding to tapping to click
tap_to_click_id=$(xinput list-props $id |
  grep -i "Tapping Enabled (" |
  cut -d'(' -f2 | cut -d')' -f1)

# Get id of the field corresponding to natural scrolling
natural_scrolling_id=$(xinput list-props $id |
  grep -i "Natural Scrolling Enabled (" |
  cut -d'(' -f2 | cut -d')' -f1)

# Set the property to true
xinput --set-prop $id $tap_to_click_id 1
xinput --set-prop $id $natural_scrolling_id 1
