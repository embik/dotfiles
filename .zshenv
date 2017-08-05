alias copy="xclip -selection clipboard"
alias paste="xclip -o -selection clipboard"

export _JAVA_AWT_WM_NONREPARENTING=1
#export QT_SCALE_FACTOR=1.25

alias chromium-browser='if [[ "$(/usr/bin/swaymsg -t get_workspaces | jq ".[] | select(.focused==true) | .output")" == "\"DP-3\"" ]]; then /usr/bin/chromium-browser; else /usr/bin/chromium-browser --force-device-scale-factor=1.25; fi'
