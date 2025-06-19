#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# Hyprland
if uwsm check may-start; then
  exec uwsm start hyprland.desktop
fi
