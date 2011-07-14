function quitapp(){

echo | osascript <<EOF
tell application "$*"
  quit
end tell
EOF


}
