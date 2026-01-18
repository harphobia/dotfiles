#
# ~/.bash_profile
#

# Session
export XDG_SESSION_TYPE="wayland"
export XDG_SESSION_DESKTOP="sway"
export XDG_CURRENT_DESKTOP="sway"

# Wayland stuff
export GDK_BACKEND="wayland"
export QT_QPA_PLATFORM="wayland"
export SDL_VIDEODRIVER="wayland,x11"
export QT_QPA_PLATFORMTHEME="qt6ct"

[[ -f ~/.bashrc ]] && . ~/.bashrc
if [ -z "$WAYLAND_DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ] ; then
    exec sway --unsupported-gpu
fi
