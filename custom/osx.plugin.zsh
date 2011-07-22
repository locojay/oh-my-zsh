function quitapp(){

echo | osascript <<EOF
tell application "$*"
  quit
end tell
EOF


}

function ovpn_tunnel_list(){
osascript <<EOF
tell application "Tunnelblick"
    get configurations
    get state of configurations
end tell
EOF
}

function ovpn_tunnel_connect(){
osascript <<EOF
tell application "Tunnelblick"
	set cups to get name of configurations where state = "Connected"
	if cups contains "$1" then
		"already connected"
	else
		connect "$1"
	end if
end tell
EOF
}

function ovpn_tunnel_disconnect(){
osascript <<EOF
tell application "Tunnelblick"
	set cups to get name of configurations where state = "Connected"
	if cups contains "$1" then
		disconnect "$1"
	else
		"already disconnected"
	end if
end tell
EOF
}
