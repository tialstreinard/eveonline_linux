#!/bin/bash

GAME_ID="8500"
MAX_WAIT=120

#if present,remove new launcher app
if [ -d ~/.local/share/Steam/steamapps/common/Eve\ Online/app-1.1*/ ]; then
    echo "Deleting new app launcher directory..."
    rm -rf ~/.local/share/Steam/steamapps/common/Eve\ Online/app-1.1*/ 
else
    echo "New app launcher directory not found."
fi

#wait 5 seconds before launching steam
sleep 5


#if not running,launch steam
if ! pgrep -x "steam" > /dev/null; then
    echo "Launching Steam..."
    steam &
fi

#wait 2 minutes as steam loads fully
sleep $MAX_WAIT

#once steam is fully initialized,launch eve
echo "Launching game..."
steam steam://rungameid/$GAME_ID
