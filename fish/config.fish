
# overwrite greeting
# potentially disabling fastfetch
#function fish_greeting
#    # smth smth
#end
#starship init fish | source

set fish_cursor_default block blink
set fish_cursor_insert line blink
if test -z "$DISPLAY"; and test (tty) = "/dev/tty1"
	exec start-hyprland
end
