#!/usr/bin/env bash

typeset -r icon_active="󰀝"
#typeset -r icon_inactive='󰀞 '
typeset -r icon_inactive=' '

# =================
# --- Functions ---
# =================

# Check Radio State
function has_active_rf {
  rfkill -no SOFT | grep -q 'unblocked'
}

# Icon color
function get_rfstate {
  if has_active_rf; then
    printf 'inactive'
  else
    printf 'active'
  fi
}

# =================
# --- Execution ---
# =================
# Build Output
typeset -n icon="icon_$(get_rfstate)"

# Output
# if ! has_active_rf; then
echo "$icon"
# else
#   printf ""
# fi
