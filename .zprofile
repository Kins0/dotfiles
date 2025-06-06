export PATH=$PATH:~/.scripts:/var/lib/flatpak/exports/bin:~/.local/bin:~/.local/share/bin:~/.config/emacs/bin

#if [ "$XDG_SESSION_TYPE" == "wayland" ]; then
#    export MOZ_ENABLE_WAYLAND=1
#fi

export BROWSER='firefox'
export EDITOR='nvim'
export TERMINAL='alacritty'
export FILE='ranger'

if uwsm check may-start && uwsm select; then
	exec uwsm start hyprland.desktop
fi
